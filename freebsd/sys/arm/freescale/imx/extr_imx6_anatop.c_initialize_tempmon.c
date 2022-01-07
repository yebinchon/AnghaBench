
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int temp_room_cnt; int temp_high_cnt; int temp_high_val; int temp_throttle_val; int temp_throttle_trigger_cnt; scalar_t__ temp_last_cnt; int temp_throttle_delay; int temp_throttle_callout; void* temp_throttle_reset_cnt; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int FSL_OCOTP_ANA1 ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE0 ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE0_ALARM_SHIFT ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE0_MEASURE ;
 int IMX6_ANALOG_TEMPMON_TEMPSENSE1 ;
 int OID_AUTO ;
 int SBT_1MS ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct imx6_anatop_softc*,int ,int ,char*,char*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_imx ;
 int callout_init (int *,int ) ;
 int callout_reset_sbt (int *,int,int ,int ,struct imx6_anatop_softc*,int ) ;
 int fsl_ocotp_read_4 (int ) ;
 int imx6_anatop_write_4 (int ,int) ;
 int temp_sysctl_handler ;
 int temp_throttle_sysctl_handler ;
 void* temp_to_count (struct imx6_anatop_softc*,int) ;
 int temp_update_count (struct imx6_anatop_softc*) ;
 int tempmon_throttle_check ;

__attribute__((used)) static void
initialize_tempmon(struct imx6_anatop_softc *sc)
{
 uint32_t cal;





 cal = fsl_ocotp_read_4(FSL_OCOTP_ANA1);
 sc->temp_room_cnt = (cal & 0xFFF00000) >> 20;
 sc->temp_high_cnt = (cal & 0x000FFF00) >> 8;
 sc->temp_high_val = (cal & 0x000000FF) * 10;





 sc->temp_throttle_val = sc->temp_high_val - 100;
 sc->temp_throttle_trigger_cnt =
     temp_to_count(sc, sc->temp_throttle_val);
 sc->temp_throttle_reset_cnt =
     temp_to_count(sc, sc->temp_throttle_val - 50);





 imx6_anatop_write_4(IMX6_ANALOG_TEMPMON_TEMPSENSE1, 0x0800);
 imx6_anatop_write_4(IMX6_ANALOG_TEMPMON_TEMPSENSE0,
     (sc->temp_throttle_trigger_cnt <<
     IMX6_ANALOG_TEMPMON_TEMPSENSE0_ALARM_SHIFT) |
     IMX6_ANALOG_TEMPMON_TEMPSENSE0_MEASURE);







 while (sc->temp_last_cnt == 0)
  temp_update_count(sc);
 sc->temp_throttle_delay = 100 * SBT_1MS;
 callout_init(&sc->temp_throttle_callout, 0);
 callout_reset_sbt(&sc->temp_throttle_callout, sc->temp_throttle_delay,
     0, tempmon_throttle_check, sc, 0);

 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
     temp_sysctl_handler, "IK", "Current die temperature");
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "throttle_temperature", CTLTYPE_INT | CTLFLAG_RW, sc,
     0, temp_throttle_sysctl_handler, "IK",
     "Throttle CPU when exceeding this temperature");
}
