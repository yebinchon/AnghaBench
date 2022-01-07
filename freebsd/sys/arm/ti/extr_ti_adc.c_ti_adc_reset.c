
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_adc_softc {int sc_adc_nchannels; int* sc_adc_channels; } ;
struct TYPE_2__ {scalar_t__ enable; } ;


 int TI_ADC_LOCK_ASSERT (struct ti_adc_softc*) ;
 TYPE_1__* ti_adc_inputs ;

__attribute__((used)) static void
ti_adc_reset(struct ti_adc_softc *sc)
{
 int ain, i;

 TI_ADC_LOCK_ASSERT(sc);


 for (i = 0; i < sc->sc_adc_nchannels; i++) {
  ain = sc->sc_adc_channels[i];
  ti_adc_inputs[ain].enable = 0;
 }
}
