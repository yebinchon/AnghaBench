
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_5__ {int b_freeze_lock; int * b_freeze_cksum; } ;
struct TYPE_6__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_2__ arc_buf_hdr_t ;


 int ASSERT (int ) ;
 int HDR_HAS_L1HDR (TYPE_2__*) ;
 int kmem_free (int *,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static inline void
arc_cksum_free(arc_buf_hdr_t *hdr)
{
 ASSERT(HDR_HAS_L1HDR(hdr));
 mutex_enter(&hdr->b_l1hdr.b_freeze_lock);
 if (hdr->b_l1hdr.b_freeze_cksum != ((void*)0)) {
  kmem_free(hdr->b_l1hdr.b_freeze_cksum, sizeof (zio_cksum_t));
  hdr->b_l1hdr.b_freeze_cksum = ((void*)0);
 }
 mutex_exit(&hdr->b_l1hdr.b_freeze_lock);
}
