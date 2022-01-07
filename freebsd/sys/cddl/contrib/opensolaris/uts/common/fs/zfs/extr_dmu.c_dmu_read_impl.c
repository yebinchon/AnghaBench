
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ dn_maxblkid; scalar_t__ dn_datablksz; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_8__ {scalar_t__ db_offset; scalar_t__ db_size; scalar_t__ db_data; } ;
typedef TYPE_2__ dmu_buf_t ;


 int ASSERT (int) ;
 int DMU_MAX_ACCESS ;
 int FTAG ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int TRUE ;
 int bcopy (char*,void*,int) ;
 int bzero (char*,scalar_t__) ;
 int dmu_buf_hold_array_by_dnode (TYPE_1__*,scalar_t__,scalar_t__,int ,int ,int*,TYPE_2__***,int ) ;
 int dmu_buf_rele_array (TYPE_2__**,int,int ) ;

__attribute__((used)) static int
dmu_read_impl(dnode_t *dn, uint64_t offset, uint64_t size,
    void *buf, uint32_t flags)
{
 dmu_buf_t **dbp;
 int numbufs, err = 0;






 if (dn->dn_maxblkid == 0) {
  int newsz = offset > dn->dn_datablksz ? 0 :
      MIN(size, dn->dn_datablksz - offset);
  bzero((char *)buf + newsz, size - newsz);
  size = newsz;
 }

 while (size > 0) {
  uint64_t mylen = MIN(size, DMU_MAX_ACCESS / 2);
  int i;





  err = dmu_buf_hold_array_by_dnode(dn, offset, mylen,
      TRUE, FTAG, &numbufs, &dbp, flags);
  if (err)
   break;

  for (i = 0; i < numbufs; i++) {
   int tocpy;
   int bufoff;
   dmu_buf_t *db = dbp[i];

   ASSERT(size > 0);

   bufoff = offset - db->db_offset;
   tocpy = (int)MIN(db->db_size - bufoff, size);

   bcopy((char *)db->db_data + bufoff, buf, tocpy);

   offset += tocpy;
   size -= tocpy;
   buf = (char *)buf + tocpy;
  }
  dmu_buf_rele_array(dbp, numbufs, FTAG);
 }
 return (err);
}
