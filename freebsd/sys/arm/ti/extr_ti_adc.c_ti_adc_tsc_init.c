
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int sc_xp_bit; int sc_tsc_wires; int sc_yp_inp; int sc_xn_bit; int sc_yn_bit; int sc_yp_bit; int sc_coord_readouts; int sc_xp_inp; int sc_charge_delay; int sc_yn_inp; int sc_tsc_enabled; } ;


 int ADC_FIFO1THRESHOLD ;
 int ADC_IDLECONFIG ;
 int ADC_READ4 (struct ti_adc_softc*,int ) ;
 int ADC_STEPCFG (int) ;
 int ADC_STEPDLY (int) ;
 int ADC_STEPS ;
 int ADC_STEP_AVG_SHIFT ;
 int ADC_STEP_FIFO1 ;
 int ADC_STEP_INM (int) ;
 int ADC_STEP_INP (int) ;
 int ADC_STEP_MODE_HW_ONESHOT ;
 int ADC_TC_CHARGE_DELAY ;
 int ADC_TC_CHARGE_STEPCONFIG ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,int) ;
 int STEPDLY_OPEN ;
 int TI_ADC_LOCK (struct ti_adc_softc*) ;
 int TI_ADC_UNLOCK (struct ti_adc_softc*) ;

__attribute__((used)) static void
ti_adc_tsc_init(struct ti_adc_softc *sc)
{
 int i, start_step, end_step;
 uint32_t stepconfig, val;

 TI_ADC_LOCK(sc);


 stepconfig = ADC_STEP_FIFO1 | (4 << ADC_STEP_AVG_SHIFT) |
     ADC_STEP_MODE_HW_ONESHOT | sc->sc_xp_bit;
 if (sc->sc_tsc_wires == 4)
  stepconfig |= ADC_STEP_INP(sc->sc_yp_inp) | sc->sc_xn_bit;
 else if (sc->sc_tsc_wires == 5)
  stepconfig |= ADC_STEP_INP(4) |
   sc->sc_xn_bit | sc->sc_yn_bit | sc->sc_yp_bit;
 else if (sc->sc_tsc_wires == 8)
  stepconfig |= ADC_STEP_INP(sc->sc_yp_inp) | sc->sc_xn_bit;

 start_step = ADC_STEPS - sc->sc_coord_readouts + 1;
 end_step = start_step + sc->sc_coord_readouts - 1;
 for (i = start_step; i <= end_step; i++) {
  ADC_WRITE4(sc, ADC_STEPCFG(i), stepconfig);
  ADC_WRITE4(sc, ADC_STEPDLY(i), STEPDLY_OPEN);
 }


 stepconfig = ADC_STEP_FIFO1 | (4 << ADC_STEP_AVG_SHIFT) |
     ADC_STEP_MODE_HW_ONESHOT | sc->sc_yn_bit |
     ADC_STEP_INM(8);
 if (sc->sc_tsc_wires == 4)
  stepconfig |= ADC_STEP_INP(sc->sc_xp_inp) | sc->sc_yp_bit;
 else if (sc->sc_tsc_wires == 5)
  stepconfig |= ADC_STEP_INP(4) |
   sc->sc_xp_bit | sc->sc_xn_bit | sc->sc_yp_bit;
 else if (sc->sc_tsc_wires == 8)
  stepconfig |= ADC_STEP_INP(sc->sc_xp_inp) | sc->sc_yp_bit;

 start_step = ADC_STEPS - (sc->sc_coord_readouts*2 + 2) + 1;
 end_step = start_step + sc->sc_coord_readouts - 1;
 for (i = start_step; i <= end_step; i++) {
  ADC_WRITE4(sc, ADC_STEPCFG(i), stepconfig);
  ADC_WRITE4(sc, ADC_STEPDLY(i), STEPDLY_OPEN);
 }


 val = ADC_READ4(sc, ADC_IDLECONFIG);
 ADC_WRITE4(sc, ADC_TC_CHARGE_STEPCONFIG, val);
 ADC_WRITE4(sc, ADC_TC_CHARGE_DELAY, sc->sc_charge_delay);


 start_step = ADC_STEPS - (sc->sc_coord_readouts + 2) + 1;
 stepconfig = ADC_STEP_FIFO1 | (4 << ADC_STEP_AVG_SHIFT) |
     ADC_STEP_MODE_HW_ONESHOT | sc->sc_yp_bit |
     sc->sc_xn_bit | ADC_STEP_INP(sc->sc_xp_inp) |
     ADC_STEP_INM(8);
 ADC_WRITE4(sc, ADC_STEPCFG(start_step), stepconfig);
 ADC_WRITE4(sc, ADC_STEPDLY(start_step), STEPDLY_OPEN);
 start_step++;
 stepconfig |= ADC_STEP_INP(sc->sc_yn_inp);
 ADC_WRITE4(sc, ADC_STEPCFG(start_step), stepconfig);
 ADC_WRITE4(sc, ADC_STEPDLY(start_step), STEPDLY_OPEN);

 ADC_WRITE4(sc, ADC_FIFO1THRESHOLD, (sc->sc_coord_readouts*2 + 2) - 1);

 sc->sc_tsc_enabled = 1;
 start_step = ADC_STEPS - (sc->sc_coord_readouts*2 + 2) + 1;
 end_step = ADC_STEPS;
 for (i = start_step; i <= end_step; i++) {
  sc->sc_tsc_enabled |= (1 << i);
 }


 TI_ADC_UNLOCK(sc);
}
