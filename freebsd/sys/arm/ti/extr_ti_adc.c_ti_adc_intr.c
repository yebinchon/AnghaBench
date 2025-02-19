
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int sc_pen_down; } ;


 int ADC_IRQENABLE_CLR ;
 int ADC_IRQSTATUS ;
 int ADC_IRQSTATUS_RAW ;
 int ADC_IRQ_END_OF_SEQ ;
 int ADC_IRQ_FIFO0_THRES ;
 int ADC_IRQ_FIFO1_THRES ;
 int ADC_IRQ_HW_PEN_ASYNC ;
 int ADC_IRQ_PEN_UP ;
 int ADC_READ4 (struct ti_adc_softc*,int ) ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,int) ;
 int TI_ADC_LOCK (struct ti_adc_softc*) ;
 int TI_ADC_UNLOCK (struct ti_adc_softc*) ;
 int ti_adc_ev_report (struct ti_adc_softc*) ;
 int ti_adc_intr_locked (struct ti_adc_softc*,int) ;
 int ti_adc_setup (struct ti_adc_softc*) ;
 int ti_adc_tsc_intr_locked (struct ti_adc_softc*,int) ;

__attribute__((used)) static void
ti_adc_intr(void *arg)
{
 struct ti_adc_softc *sc;
 uint32_t status, rawstatus;

 sc = (struct ti_adc_softc *)arg;

 TI_ADC_LOCK(sc);

 rawstatus = ADC_READ4(sc, ADC_IRQSTATUS_RAW);
 status = ADC_READ4(sc, ADC_IRQSTATUS);

 if (rawstatus & ADC_IRQ_HW_PEN_ASYNC) {
  sc->sc_pen_down = 1;
  status |= ADC_IRQ_HW_PEN_ASYNC;
  ADC_WRITE4(sc, ADC_IRQENABLE_CLR,
   ADC_IRQ_HW_PEN_ASYNC);



 }

 if (rawstatus & ADC_IRQ_PEN_UP) {
  sc->sc_pen_down = 0;
  status |= ADC_IRQ_PEN_UP;



 }

 if (status & ADC_IRQ_FIFO0_THRES)
  ti_adc_intr_locked(sc, status);

 if (status & ADC_IRQ_FIFO1_THRES)
  ti_adc_tsc_intr_locked(sc, status);

 if (status) {

  ADC_WRITE4(sc, ADC_IRQSTATUS, status);
 }


 if (status & ADC_IRQ_END_OF_SEQ)
  ti_adc_setup(sc);

 TI_ADC_UNLOCK(sc);
}
