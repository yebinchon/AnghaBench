
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_arc_node; int b_freeze_lock; int b_refcnt; int b_cv; } ;
struct TYPE_5__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_2__ arc_buf_hdr_t ;


 int ARC_SPACE_HDRS ;
 int CV_DEFAULT ;
 int HDR_FULL_SIZE ;
 int MUTEX_DEFAULT ;
 int arc_space_consume (int ,int ) ;
 int bzero (TYPE_2__*,int ) ;
 int cv_init (int *,int *,int ,int *) ;
 int multilist_link_init (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static int
hdr_full_cons(void *vbuf, void *unused, int kmflag)
{
 arc_buf_hdr_t *hdr = vbuf;

 bzero(hdr, HDR_FULL_SIZE);
 cv_init(&hdr->b_l1hdr.b_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 zfs_refcount_create(&hdr->b_l1hdr.b_refcnt);
 mutex_init(&hdr->b_l1hdr.b_freeze_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 multilist_link_init(&hdr->b_l1hdr.b_arc_node);
 arc_space_consume(HDR_FULL_SIZE, ARC_SPACE_HDRS);

 return (0);
}
