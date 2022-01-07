
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {scalar_t__ sc_last_state; } ;


 int ADC_CTRL ;
 int ADC_CTRL_ENABLE ;
 int ADC_FIFO0COUNT ;
 int ADC_FIFO0DATA ;
 int ADC_FIFO1COUNT ;
 int ADC_FIFO1DATA ;
 int ADC_FIFO_COUNT_MSK ;
 int ADC_IRQENABLE_CLR ;
 int ADC_IRQSTATUS ;
 int ADC_IRQ_END_OF_SEQ ;
 int ADC_IRQ_FIFO0_THRES ;
 int ADC_IRQ_FIFO1_THRES ;
 int ADC_READ4 (struct ti_adc_softc*,int ) ;
 int ADC_STEPENABLE ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,int) ;
 int TI_ADC_LOCK_ASSERT (struct ti_adc_softc*) ;

__attribute__((used)) static void
ti_adc_disable(struct ti_adc_softc *sc)
{
 int count;
 uint32_t data;

 TI_ADC_LOCK_ASSERT(sc);

 if (sc->sc_last_state == 0)
  return;


 ADC_WRITE4(sc, ADC_STEPENABLE, 0);


 ADC_WRITE4(sc, ADC_CTRL, ADC_READ4(sc, ADC_CTRL) & ~ADC_CTRL_ENABLE);


 ADC_WRITE4(sc, ADC_IRQENABLE_CLR,
     ADC_IRQ_FIFO0_THRES | ADC_IRQ_FIFO1_THRES | ADC_IRQ_END_OF_SEQ);


 ADC_WRITE4(sc, ADC_IRQSTATUS, ADC_READ4(sc, ADC_IRQSTATUS));


 count = ADC_READ4(sc, ADC_FIFO0COUNT) & ADC_FIFO_COUNT_MSK;
 while (count > 0) {
  data = ADC_READ4(sc, ADC_FIFO0DATA);
  count = ADC_READ4(sc, ADC_FIFO0COUNT) & ADC_FIFO_COUNT_MSK;
 }

 count = ADC_READ4(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
 while (count > 0) {
  data = ADC_READ4(sc, ADC_FIFO1DATA);
  count = ADC_READ4(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
 }

 sc->sc_last_state = 0;
}
