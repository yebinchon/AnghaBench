
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int dummy; } ;


 int ADC_IDLECONFIG ;
 int ADC_STEP_INM (int) ;
 int ADC_STEP_INP (int) ;
 int ADC_STEP_YNN_SW ;
 int ADC_STEP_YPN_SW ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,int) ;

__attribute__((used)) static void
ti_adc_idlestep_init(struct ti_adc_softc *sc)
{
 uint32_t val;

 val = ADC_STEP_YNN_SW | ADC_STEP_INM(8) | ADC_STEP_INP(8) | ADC_STEP_YPN_SW;

 ADC_WRITE4(sc, ADC_IDLECONFIG, val);
}
