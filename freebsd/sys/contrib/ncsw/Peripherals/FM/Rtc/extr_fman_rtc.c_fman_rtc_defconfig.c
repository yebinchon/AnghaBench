
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_cfg {int * trigger_polarity; int * alarm_polarity; int pulse_realign; int invert_output_clk_phase; int invert_input_clk_phase; int src_clk; } ;


 int DEFAULT_ALARM_POLARITY ;
 int DEFAULT_INVERT_INPUT_CLK_PHASE ;
 int DEFAULT_INVERT_OUTPUT_CLK_PHASE ;
 int DEFAULT_PULSE_REALIGN ;
 int DEFAULT_SRC_CLOCK ;
 int DEFAULT_TRIGGER_POLARITY ;
 int FMAN_RTC_MAX_NUM_OF_ALARMS ;
 int FMAN_RTC_MAX_NUM_OF_EXT_TRIGGERS ;

void fman_rtc_defconfig(struct rtc_cfg *cfg)
{
 int i;
 cfg->src_clk = DEFAULT_SRC_CLOCK;
 cfg->invert_input_clk_phase = DEFAULT_INVERT_INPUT_CLK_PHASE;
 cfg->invert_output_clk_phase = DEFAULT_INVERT_OUTPUT_CLK_PHASE;
 cfg->pulse_realign = DEFAULT_PULSE_REALIGN;
 for (i = 0; i < FMAN_RTC_MAX_NUM_OF_ALARMS; i++)
  cfg->alarm_polarity[i] = DEFAULT_ALARM_POLARITY;
 for (i = 0; i < FMAN_RTC_MAX_NUM_OF_EXT_TRIGGERS; i++)
  cfg->trigger_polarity[i] = DEFAULT_TRIGGER_POLARITY;
}
