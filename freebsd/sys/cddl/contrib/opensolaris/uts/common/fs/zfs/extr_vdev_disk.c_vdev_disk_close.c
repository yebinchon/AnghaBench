
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_delayed_close; int vdev_spa; scalar_t__ vdev_reopening; TYPE_2__* vdev_tsd; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {scalar_t__ vd_ldi_offline; int * vd_lh; int * vd_devid; int * vd_minor; } ;
typedef TYPE_2__ vdev_disk_t ;


 int B_FALSE ;
 int ddi_devid_free (int *) ;
 int ddi_devid_str_free (int *) ;
 int kcred ;
 int ldi_close (int *,int ,int ) ;
 int spa_mode (int ) ;
 int vdev_disk_free (TYPE_1__*) ;

__attribute__((used)) static void
vdev_disk_close(vdev_t *vd)
{
 vdev_disk_t *dvd = vd->vdev_tsd;

 if (vd->vdev_reopening || dvd == ((void*)0))
  return;

 if (dvd->vd_minor != ((void*)0)) {
  ddi_devid_str_free(dvd->vd_minor);
  dvd->vd_minor = ((void*)0);
 }

 if (dvd->vd_devid != ((void*)0)) {
  ddi_devid_free(dvd->vd_devid);
  dvd->vd_devid = ((void*)0);
 }

 if (dvd->vd_lh != ((void*)0)) {
  (void) ldi_close(dvd->vd_lh, spa_mode(vd->vdev_spa), kcred);
  dvd->vd_lh = ((void*)0);
 }

 vd->vdev_delayed_close = B_FALSE;





 if (dvd->vd_ldi_offline)
  return;

 vdev_disk_free(vd);
}
