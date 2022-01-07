
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timecounter {struct dmtpps_softc* tc_priv; } ;
struct TYPE_3__ {int capcount; } ;
struct dmtpps_softc {int pps_mtx; TYPE_1__ pps_state; } ;


 int DMTIMER_READ4 (struct dmtpps_softc*,int ) ;
 int DMTIMER_WRITE4 (struct dmtpps_softc*,int ,int) ;
 int DMT_IRQSTATUS ;
 int DMT_IRQSTATUS_RAW ;
 int DMT_IRQ_TCAR ;
 int DMT_TCAR1 ;
 int PPS_CAPTUREASSERT ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pps_capture (TYPE_1__*) ;
 int pps_event (TYPE_1__*,int ) ;

__attribute__((used)) static void
dmtpps_poll(struct timecounter *tc)
{
 struct dmtpps_softc *sc;

 sc = tc->tc_priv;
 if (DMTIMER_READ4(sc, DMT_IRQSTATUS_RAW) & DMT_IRQ_TCAR) {
  pps_capture(&sc->pps_state);
  sc->pps_state.capcount = DMTIMER_READ4(sc, DMT_TCAR1);
  DMTIMER_WRITE4(sc, DMT_IRQSTATUS, DMT_IRQ_TCAR);

  mtx_lock_spin(&sc->pps_mtx);
  pps_event(&sc->pps_state, PPS_CAPTUREASSERT);
  mtx_unlock_spin(&sc->pps_mtx);
 }
}
