
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ctl_softc {size_t init_min; size_t init_max; } ;
struct ctl_lun {int ** pending_ua; int lun_lock; struct ctl_softc* ctl_softc; } ;
typedef int ctl_ua_type ;


 size_t CTL_MAX_INIT_PER_PORT ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

void
ctl_clr_ua(struct ctl_lun *lun, uint32_t initidx, ctl_ua_type ua)
{
 struct ctl_softc *softc = lun->ctl_softc;
 ctl_ua_type *pu;

 if (initidx < softc->init_min || initidx >= softc->init_max)
  return;
 mtx_assert(&lun->lun_lock, MA_OWNED);
 pu = lun->pending_ua[initidx / CTL_MAX_INIT_PER_PORT];
 if (pu == ((void*)0))
  return;
 pu[initidx % CTL_MAX_INIT_PER_PORT] &= ~ua;
}
