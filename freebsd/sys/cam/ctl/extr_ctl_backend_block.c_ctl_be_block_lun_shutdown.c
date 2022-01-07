
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_block_softc {int lock; } ;
struct ctl_be_block_lun {int flags; struct ctl_be_block_softc* softc; } ;


 int CTL_BE_BLOCK_LUN_UNCONFIGURED ;
 int CTL_BE_BLOCK_LUN_WAITING ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ctl_be_block_lun*) ;

__attribute__((used)) static void
ctl_be_block_lun_shutdown(void *be_lun)
{
 struct ctl_be_block_lun *lun = be_lun;
 struct ctl_be_block_softc *softc = lun->softc;

 mtx_lock(&softc->lock);
 lun->flags |= CTL_BE_BLOCK_LUN_UNCONFIGURED;
 if (lun->flags & CTL_BE_BLOCK_LUN_WAITING)
  wakeup(lun);
 mtx_unlock(&softc->lock);
}
