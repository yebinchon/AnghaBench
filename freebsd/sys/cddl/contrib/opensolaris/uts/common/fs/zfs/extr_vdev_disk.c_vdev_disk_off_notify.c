
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_spa; void* vdev_remove_wanted; TYPE_2__* vdev_tsd; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {void* vd_ldi_offline; } ;
typedef TYPE_2__ vdev_disk_t ;
typedef int ldi_handle_t ;
typedef int ldi_ev_cookie_t ;


 void* B_TRUE ;
 int LDI_EV_OFFLINE ;
 int LDI_EV_SUCCESS ;
 int SPA_ASYNC_REMOVE ;
 int ldi_ev_get_type (int ) ;
 int spa_async_request (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int vdev_disk_close (TYPE_1__*) ;
 int zfs_post_remove (int ,TYPE_1__*) ;

__attribute__((used)) static int
vdev_disk_off_notify(ldi_handle_t lh, ldi_ev_cookie_t ecookie, void *arg,
    void *ev_data)
{
 vdev_t *vd = (vdev_t *)arg;
 vdev_disk_t *dvd = vd->vdev_tsd;




 if (strcmp(ldi_ev_get_type(ecookie), LDI_EV_OFFLINE) != 0)
  return (LDI_EV_SUCCESS);
 dvd->vd_ldi_offline = B_TRUE;
 vdev_disk_close(vd);





 zfs_post_remove(vd->vdev_spa, vd);
 vd->vdev_remove_wanted = B_TRUE;
 spa_async_request(vd->vdev_spa, SPA_ASYNC_REMOVE);

 return (LDI_EV_SUCCESS);
}
