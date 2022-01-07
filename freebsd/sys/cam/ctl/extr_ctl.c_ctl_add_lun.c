
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_softc {int pending_lun_queue; int ctl_lock; } ;
struct ctl_be_lun {int dummy; } ;


 int STAILQ_INSERT_TAIL (int *,struct ctl_be_lun*,int ) ;
 struct ctl_softc* control_softc ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

int
ctl_add_lun(struct ctl_be_lun *be_lun)
{
 struct ctl_softc *softc = control_softc;

 mtx_lock(&softc->ctl_lock);
 STAILQ_INSERT_TAIL(&softc->pending_lun_queue, be_lun, links);
 mtx_unlock(&softc->ctl_lock);
 wakeup(&softc->pending_lun_queue);

 return (0);
}
