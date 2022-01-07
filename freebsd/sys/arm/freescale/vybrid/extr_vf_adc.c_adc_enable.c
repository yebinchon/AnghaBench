
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adc_softc {int dummy; } ;


 int ADC_HC0 ;
 int HC_ADCH_M ;
 int HC_ADCH_S ;
 int READ4 (struct adc_softc*,int ) ;
 int WRITE4 (struct adc_softc*,int ,int) ;
 struct adc_softc* adc_sc ;

uint32_t
adc_enable(int channel)
{
 struct adc_softc *sc;
 int reg;

 sc = adc_sc;
 if (sc == ((void*)0))
  return (1);

 reg = READ4(sc, ADC_HC0);
 reg &= ~(HC_ADCH_M << HC_ADCH_S);
 reg |= (channel << HC_ADCH_S);
 WRITE4(sc, ADC_HC0, reg);

 return (0);
}
