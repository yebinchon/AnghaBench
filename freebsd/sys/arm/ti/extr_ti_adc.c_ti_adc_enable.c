
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int sc_last_state; int sc_tsc_wires; } ;


 int ADC_CTRL ;
 int ADC_CTRL_ENABLE ;
 int ADC_CTRL_STEP_ID ;
 int ADC_CTRL_STEP_WP ;
 int ADC_CTRL_TSC_4WIRE ;
 int ADC_CTRL_TSC_5WIRE ;
 int ADC_CTRL_TSC_8WIRE ;
 int ADC_CTRL_TSC_ENABLE ;
 int ADC_IRQENABLE_SET ;
 int ADC_IRQ_END_OF_SEQ ;
 int ADC_IRQ_FIFO0_THRES ;
 int ADC_IRQ_FIFO1_THRES ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,int) ;
 int TI_ADC_LOCK_ASSERT (struct ti_adc_softc*) ;

__attribute__((used)) static void
ti_adc_enable(struct ti_adc_softc *sc)
{
 uint32_t reg;

 TI_ADC_LOCK_ASSERT(sc);

 if (sc->sc_last_state == 1)
  return;


 ADC_WRITE4(sc, ADC_IRQENABLE_SET,
     ADC_IRQ_FIFO0_THRES | ADC_IRQ_FIFO1_THRES | ADC_IRQ_END_OF_SEQ);

 reg = ADC_CTRL_STEP_WP | ADC_CTRL_STEP_ID;
 if (sc->sc_tsc_wires > 0) {
  reg |= ADC_CTRL_TSC_ENABLE;
  switch (sc->sc_tsc_wires) {
  case 4:
   reg |= ADC_CTRL_TSC_4WIRE;
   break;
  case 5:
   reg |= ADC_CTRL_TSC_5WIRE;
   break;
  case 8:
   reg |= ADC_CTRL_TSC_8WIRE;
   break;
  default:
   break;
  }
 }
 reg |= ADC_CTRL_ENABLE;

 ADC_WRITE4(sc, ADC_CTRL, reg);

 sc->sc_last_state = 1;
}
