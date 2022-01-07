
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int dummy; } ;


 int ADC_IRQ_FIFO0_THRES ;
 int ti_adc_read_data (struct ti_adc_softc*) ;

__attribute__((used)) static void
ti_adc_intr_locked(struct ti_adc_softc *sc, uint32_t status)
{

 if (status & ADC_IRQ_FIFO0_THRES)
  ti_adc_read_data(sc);
}
