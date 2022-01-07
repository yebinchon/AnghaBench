
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ctl_softc {int port_min; int port_max; } ;
struct ctl_lun {int lun_lock; struct ctl_softc* ctl_softc; } ;
typedef int ctl_ua_type ;


 int MA_OWNED ;
 int ctl_est_ua_port (struct ctl_lun*,int,int ,int ) ;
 int mtx_assert (int *,int ) ;

void
ctl_est_ua_all(struct ctl_lun *lun, uint32_t except, ctl_ua_type ua)
{
 struct ctl_softc *softc = lun->ctl_softc;
 int i;

 mtx_assert(&lun->lun_lock, MA_OWNED);
 for (i = softc->port_min; i < softc->port_max; i++)
  ctl_est_ua_port(lun, i, except, ua);
}
