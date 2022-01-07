
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adc_softc {int dummy; } ;


 int ADC_R0 ;
 int READ4 (struct adc_softc*,int ) ;
 struct adc_softc* adc_sc ;

uint32_t
adc_read(void)
{
 struct adc_softc *sc;

 sc = adc_sc;
 if (sc == ((void*)0))
  return (0);

 return (READ4(sc, ADC_R0));
}
