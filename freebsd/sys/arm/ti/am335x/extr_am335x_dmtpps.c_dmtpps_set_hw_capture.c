
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ ppsparam; } ;
struct dmtpps_softc {int pps_curmode; int tclr; TYPE_2__ pps_state; } ;


 int DMTIMER_WRITE4 (struct dmtpps_softc*,int ,int ) ;
 int DMT_TCLR ;
 int DMT_TCLR_CAPTRAN_LOHI ;
 int DMT_TCLR_CAPTRAN_MASK ;
 int PPS_CAPTUREASSERT ;

__attribute__((used)) static void
dmtpps_set_hw_capture(struct dmtpps_softc *sc, bool force_off)
{
 int newmode;

 if (force_off)
  newmode = 0;
 else
  newmode = sc->pps_state.ppsparam.mode & PPS_CAPTUREASSERT;

 if (newmode == sc->pps_curmode)
  return;
 sc->pps_curmode = newmode;

 if (newmode == PPS_CAPTUREASSERT)
  sc->tclr |= DMT_TCLR_CAPTRAN_LOHI;
 else
  sc->tclr &= ~DMT_TCLR_CAPTRAN_MASK;
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);
}
