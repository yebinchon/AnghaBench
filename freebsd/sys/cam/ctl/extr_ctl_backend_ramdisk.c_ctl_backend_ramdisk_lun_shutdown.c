
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_ramdisk_softc {int lock; int num_luns; int lun_list; } ;
struct ctl_be_ramdisk_lun {int flags; struct ctl_be_ramdisk_softc* softc; } ;


 int CTL_BE_RAMDISK_LUN_UNCONFIGURED ;
 int CTL_BE_RAMDISK_LUN_WAITING ;
 int M_RAMDISK ;
 int STAILQ_REMOVE (int *,struct ctl_be_ramdisk_lun*,int ,int ) ;
 int ctl_be_ramdisk_lun ;
 int free (void*,int ) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ctl_be_ramdisk_lun*) ;

__attribute__((used)) static void
ctl_backend_ramdisk_lun_shutdown(void *be_lun)
{
 struct ctl_be_ramdisk_lun *lun = be_lun;
 struct ctl_be_ramdisk_softc *softc = lun->softc;

 mtx_lock(&softc->lock);
 lun->flags |= CTL_BE_RAMDISK_LUN_UNCONFIGURED;
 if (lun->flags & CTL_BE_RAMDISK_LUN_WAITING) {
  wakeup(lun);
 } else {
  STAILQ_REMOVE(&softc->lun_list, lun, ctl_be_ramdisk_lun,
         links);
  softc->num_luns--;
  free(be_lun, M_RAMDISK);
 }
 mtx_unlock(&softc->lock);
}
