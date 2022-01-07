
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int temp_last_cnt; } ;


 int IMX6_ANALOG_TEMPMON_TEMPSENSE0 ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE0_TEMP_CNT_MASK ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE0_TEMP_CNT_SHIFT ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE0_VALID ;
 int imx6_anatop_read_4 (int ) ;

__attribute__((used)) static void
temp_update_count(struct imx6_anatop_softc *sc)
{
 uint32_t val;

 val = imx6_anatop_read_4(IMX6_ANALOG_TEMPMON_TEMPSENSE0);
 if (!(val & IMX6_ANALOG_TEMPMON_TEMPSENSE0_VALID))
  return;
 sc->temp_last_cnt =
     (val & IMX6_ANALOG_TEMPMON_TEMPSENSE0_TEMP_CNT_MASK) >>
     IMX6_ANALOG_TEMPMON_TEMPSENSE0_TEMP_CNT_SHIFT;
}
