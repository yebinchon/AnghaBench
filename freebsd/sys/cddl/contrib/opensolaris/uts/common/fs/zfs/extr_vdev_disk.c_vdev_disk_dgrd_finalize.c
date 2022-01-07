
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vdev_guid; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int ldi_handle_t ;
typedef int ldi_ev_cookie_t ;


 int LDI_EV_DEGRADE ;
 int ldi_ev_get_type (int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int vdev_degrade (int ,int ,int ) ;

__attribute__((used)) static void
vdev_disk_dgrd_finalize(ldi_handle_t lh, ldi_ev_cookie_t ecookie,
    int ldi_result, void *arg, void *ev_data)
{
 vdev_t *vd = (vdev_t *)arg;




 if (strcmp(ldi_ev_get_type(ecookie), LDI_EV_DEGRADE) != 0)
  return;





 (void) vdev_degrade(vd->vdev_spa, vd->vdev_guid, 0);
}
