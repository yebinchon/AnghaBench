
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int kmutex_t ;
struct TYPE_11__ {TYPE_3__* b_hdr; } ;
typedef TYPE_2__ arc_buf_t ;
struct TYPE_10__ {scalar_t__ b_state; int * b_freeze_cksum; } ;
struct TYPE_12__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;


 scalar_t__ ARC_BUF_COMPRESSED (TYPE_2__*) ;
 int ASSERT (int) ;
 int HDR_HAS_L1HDR (TYPE_3__*) ;
 int * HDR_LOCK (TYPE_3__*) ;
 int ZFS_DEBUG_MODIFY ;
 scalar_t__ arc_anon ;
 int arc_cksum_compute (TYPE_2__*) ;
 scalar_t__ arc_hdr_has_uncompressed_buf (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_flags ;

void
arc_buf_freeze(arc_buf_t *buf)
{
 arc_buf_hdr_t *hdr = buf->b_hdr;
 kmutex_t *hash_lock;

 if (!(zfs_flags & ZFS_DEBUG_MODIFY))
  return;

 if (ARC_BUF_COMPRESSED(buf)) {
  ASSERT(hdr->b_l1hdr.b_freeze_cksum == ((void*)0) ||
      arc_hdr_has_uncompressed_buf(hdr));
  return;
 }

 hash_lock = HDR_LOCK(hdr);
 mutex_enter(hash_lock);

 ASSERT(HDR_HAS_L1HDR(hdr));
 ASSERT(hdr->b_l1hdr.b_freeze_cksum != ((void*)0) ||
     hdr->b_l1hdr.b_state == arc_anon);
 arc_cksum_compute(buf);
 mutex_exit(hash_lock);
}
