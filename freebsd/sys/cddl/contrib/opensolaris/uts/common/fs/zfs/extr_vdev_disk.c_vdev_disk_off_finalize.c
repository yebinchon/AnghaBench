
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_spa; int vdev_probe_wanted; } ;
typedef TYPE_1__ vdev_t ;
typedef int ldi_handle_t ;
typedef int ldi_ev_cookie_t ;


 int B_TRUE ;
 int LDI_EV_OFFLINE ;
 int LDI_EV_SUCCESS ;
 int SPA_ASYNC_PROBE ;
 int ldi_ev_get_type (int ) ;
 int spa_async_request (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int vdev_disk_free (TYPE_1__*) ;

__attribute__((used)) static void
vdev_disk_off_finalize(ldi_handle_t lh, ldi_ev_cookie_t ecookie,
    int ldi_result, void *arg, void *ev_data)
{
 vdev_t *vd = (vdev_t *)arg;




 if (strcmp(ldi_ev_get_type(ecookie), LDI_EV_OFFLINE) != 0)
  return;





 vdev_disk_free(vd);





 if (ldi_result != LDI_EV_SUCCESS) {
  vd->vdev_probe_wanted = B_TRUE;
  spa_async_request(vd->vdev_spa, SPA_ASYNC_PROBE);
 }
}
