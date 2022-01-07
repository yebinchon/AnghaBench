
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adc_softc {int sc_xp_inp; int sc_xn_inp; int sc_yp_inp; int sc_yn_inp; int sc_dev; int sc_yn_bit; int sc_yp_bit; int sc_xn_bit; int sc_xp_bit; } ;


 int ADC_STEP_XNN_SW ;
 int ADC_STEP_XPP_SW ;
 int ADC_STEP_YNN_SW ;
 int ADC_STEP_YPP_SW ;




 int device_printf (int ,char*) ;

__attribute__((used)) static int
ti_adc_config_wires(struct ti_adc_softc *sc, int *wire_configs, int nwire_configs)
{
 int i;
 int wire, ai;

 for (i = 0; i < nwire_configs; i++) {
  wire = wire_configs[i] & 0xf;
  ai = (wire_configs[i] >> 4) & 0xf;
  switch (wire) {
  case 130:
   sc->sc_xp_bit = ADC_STEP_XPP_SW;
   sc->sc_xp_inp = ai;
   break;
  case 131:
   sc->sc_xn_bit = ADC_STEP_XNN_SW;
   sc->sc_xn_inp = ai;
   break;
  case 128:
   sc->sc_yp_bit = ADC_STEP_YPP_SW;
   sc->sc_yp_inp = ai;
   break;
  case 129:
   sc->sc_yn_bit = ADC_STEP_YNN_SW;
   sc->sc_yn_inp = ai;
   break;
  default:
   device_printf(sc->sc_dev, "Invalid wire config\n");
   return (-1);
  }
 }
 return (0);
}
