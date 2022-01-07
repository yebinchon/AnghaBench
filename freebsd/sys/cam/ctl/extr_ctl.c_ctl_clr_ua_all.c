
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ctl_softc {int port_min; int port_max; } ;
struct ctl_lun {int ** pending_ua; int lun_lock; struct ctl_softc* ctl_softc; } ;
typedef int ctl_ua_type ;


 int CTL_MAX_INIT_PER_PORT ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

void
ctl_clr_ua_all(struct ctl_lun *lun, uint32_t except, ctl_ua_type ua)
{
 struct ctl_softc *softc = lun->ctl_softc;
 int i, j;

 mtx_assert(&lun->lun_lock, MA_OWNED);
 for (i = softc->port_min; i < softc->port_max; i++) {
  if (lun->pending_ua[i] == ((void*)0))
   continue;
  for (j = 0; j < CTL_MAX_INIT_PER_PORT; j++) {
   if (i * CTL_MAX_INIT_PER_PORT + j == except)
    continue;
   lun->pending_ua[i][j] &= ~ua;
  }
 }
}
