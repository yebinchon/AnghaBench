
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int arc_buf_t ;
struct TYPE_4__ {int ht_mask; TYPE_1__* ht_locks; int * ht_table; } ;
struct TYPE_3__ {int ht_lock; } ;


 int ASSERT (int) ;
 int BUF_LOCKS ;
 int HDR_FULL_SIZE ;
 int HDR_L2ONLY_SIZE ;
 int KM_NOSLEEP ;
 int MUTEX_DEFAULT ;
 int PAGESIZE ;
 int ZFS_CRC64_POLY ;
 void* buf_cache ;
 int buf_cons ;
 int buf_dest ;
 TYPE_2__ buf_hash_table ;
 void* hdr_full_cache ;
 int hdr_full_cons ;
 int hdr_full_dest ;
 void* hdr_l2only_cache ;
 int hdr_l2only_cons ;
 int hdr_l2only_dest ;
 int * hdr_recl ;
 void* kmem_cache_create (char*,int,int ,int ,int ,int *,int *,int *,int ) ;
 int * kmem_zalloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;
 scalar_t__ physmem ;
 int zfs_arc_average_blocksize ;
 int* zfs_crc64_table ;

__attribute__((used)) static void
buf_init(void)
{
 uint64_t *ct;
 uint64_t hsize = 1ULL << 12;
 int i, j;







 while (hsize * zfs_arc_average_blocksize < (uint64_t)physmem * PAGESIZE)
  hsize <<= 1;
retry:
 buf_hash_table.ht_mask = hsize - 1;
 buf_hash_table.ht_table =
     kmem_zalloc(hsize * sizeof (void*), KM_NOSLEEP);
 if (buf_hash_table.ht_table == ((void*)0)) {
  ASSERT(hsize > (1ULL << 8));
  hsize >>= 1;
  goto retry;
 }

 hdr_full_cache = kmem_cache_create("arc_buf_hdr_t_full", HDR_FULL_SIZE,
     0, hdr_full_cons, hdr_full_dest, hdr_recl, ((void*)0), ((void*)0), 0);
 hdr_l2only_cache = kmem_cache_create("arc_buf_hdr_t_l2only",
     HDR_L2ONLY_SIZE, 0, hdr_l2only_cons, hdr_l2only_dest, hdr_recl,
     ((void*)0), ((void*)0), 0);
 buf_cache = kmem_cache_create("arc_buf_t", sizeof (arc_buf_t),
     0, buf_cons, buf_dest, ((void*)0), ((void*)0), ((void*)0), 0);

 for (i = 0; i < 256; i++)
  for (ct = zfs_crc64_table + i, *ct = i, j = 8; j > 0; j--)
   *ct = (*ct >> 1) ^ (-(*ct & 1) & ZFS_CRC64_POLY);

 for (i = 0; i < BUF_LOCKS; i++) {
  mutex_init(&buf_hash_table.ht_locks[i].ht_lock,
      ((void*)0), MUTEX_DEFAULT, ((void*)0));
 }
}
