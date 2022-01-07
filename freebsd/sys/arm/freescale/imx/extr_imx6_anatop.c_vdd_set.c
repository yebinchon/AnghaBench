
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int cpu_curmv; } ;
typedef int boolean_t ;


 int DELAY (int) ;
 int IMX6_ANALOG_PMU_REG0_TARG_MASK ;
 int IMX6_ANALOG_PMU_REG0_TARG_SHIFT ;
 int IMX6_ANALOG_PMU_REG1_TARG_MASK ;
 int IMX6_ANALOG_PMU_REG1_TARG_SHIFT ;
 int IMX6_ANALOG_PMU_REG2_TARG_MASK ;
 int IMX6_ANALOG_PMU_REG2_TARG_SHIFT ;
 int IMX6_ANALOG_PMU_REG_CORE ;
 int imx6_anatop_read_4 (int ) ;
 int imx6_anatop_write_4 (int ,int) ;

__attribute__((used)) static void
vdd_set(struct imx6_anatop_softc *sc, int mv)
{
 int newtarg, newtargSoc, oldtarg;
 uint32_t delay, pmureg;
 static boolean_t init_done = 0;
 pmureg = imx6_anatop_read_4(IMX6_ANALOG_PMU_REG_CORE);
 oldtarg = pmureg & IMX6_ANALOG_PMU_REG0_TARG_MASK;


 if (mv < 725)
  newtarg = 0x00;
 else if (mv > 1450)
  newtarg = 0x1F;
 else
  newtarg = (mv - 700) / 25;







 newtargSoc = (newtarg < 18) ? 18 : newtarg;
 if (init_done) {
  if (newtarg == oldtarg)
   return;
  else if (newtarg > oldtarg)
   delay = (newtarg - oldtarg) * 6;
  else
   delay = 0;
 } else {
  delay = (700 / 25) * 6;
  init_done = 1;
 }




 pmureg &= ~(IMX6_ANALOG_PMU_REG0_TARG_MASK |
     IMX6_ANALOG_PMU_REG1_TARG_MASK |
     IMX6_ANALOG_PMU_REG2_TARG_MASK);

 pmureg |= newtarg << IMX6_ANALOG_PMU_REG0_TARG_SHIFT;
 pmureg |= newtarg << IMX6_ANALOG_PMU_REG1_TARG_SHIFT;
 pmureg |= newtargSoc << IMX6_ANALOG_PMU_REG2_TARG_SHIFT;

 imx6_anatop_write_4(IMX6_ANALOG_PMU_REG_CORE, pmureg);
 DELAY(delay);
 sc->cpu_curmv = newtarg * 25 + 700;
}
