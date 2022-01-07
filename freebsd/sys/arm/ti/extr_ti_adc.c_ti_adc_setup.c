
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct ti_adc_softc {unsigned int sc_tsc_enabled; int sc_adc_nchannels; int* sc_adc_channels; } ;
struct TYPE_2__ {scalar_t__ enable; } ;


 unsigned int ADC_READ4 (struct ti_adc_softc*,int ) ;
 int ADC_STEPENABLE ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,unsigned int) ;
 int TI_ADC_LOCK_ASSERT (struct ti_adc_softc*) ;
 int ti_adc_disable (struct ti_adc_softc*) ;
 int ti_adc_enable (struct ti_adc_softc*) ;
 TYPE_1__* ti_adc_inputs ;

__attribute__((used)) static int
ti_adc_setup(struct ti_adc_softc *sc)
{
 int ain, i;
 uint32_t enabled;

 TI_ADC_LOCK_ASSERT(sc);


 enabled = sc->sc_tsc_enabled;
 for (i = 0; i < sc->sc_adc_nchannels; i++) {
  ain = sc->sc_adc_channels[i];
  if (ti_adc_inputs[ain].enable)
   enabled |= (1U << (ain + 1));
 }


 if (enabled != 0) {
  ti_adc_enable(sc);

  if (enabled != ADC_READ4(sc, ADC_STEPENABLE))
   ADC_WRITE4(sc, ADC_STEPENABLE, enabled);
 } else
  ti_adc_disable(sc);

 return (0);
}
