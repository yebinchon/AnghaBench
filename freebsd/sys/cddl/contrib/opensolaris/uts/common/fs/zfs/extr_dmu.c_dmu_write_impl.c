
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {int db_offset; int db_size; scalar_t__ db_data; } ;
typedef TYPE_1__ dmu_buf_t ;


 int ASSERT (int) ;
 scalar_t__ MIN (int,int) ;
 int bcopy (void const*,char*,int) ;
 int dmu_buf_fill_done (TYPE_1__*,int *) ;
 int dmu_buf_will_dirty (TYPE_1__*,int *) ;
 int dmu_buf_will_fill (TYPE_1__*,int *) ;

__attribute__((used)) static void
dmu_write_impl(dmu_buf_t **dbp, int numbufs, uint64_t offset, uint64_t size,
    const void *buf, dmu_tx_t *tx)
{
 int i;

 for (i = 0; i < numbufs; i++) {
  int tocpy;
  int bufoff;
  dmu_buf_t *db = dbp[i];

  ASSERT(size > 0);

  bufoff = offset - db->db_offset;
  tocpy = (int)MIN(db->db_size - bufoff, size);

  ASSERT(i == 0 || i == numbufs-1 || tocpy == db->db_size);

  if (tocpy == db->db_size)
   dmu_buf_will_fill(db, tx);
  else
   dmu_buf_will_dirty(db, tx);

  bcopy(buf, (char *)db->db_data + bufoff, tocpy);

  if (tocpy == db->db_size)
   dmu_buf_fill_done(db, tx);

  offset += tocpy;
  size -= tocpy;
  buf = (char *)buf + tocpy;
 }
}
