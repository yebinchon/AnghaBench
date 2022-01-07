
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int tmr_prsc; } ;
struct rtc_cfg {int src_clk; scalar_t__* alarm_polarity; scalar_t__* trigger_polarity; scalar_t__ bypass; int timer_slave_mode; scalar_t__ invert_output_clk_phase; scalar_t__ invert_input_clk_phase; } ;


 scalar_t__ E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW ;


 scalar_t__ E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE ;
 int FMAN_RTC_TMR_CTRL_ALMP1 ;
 int FMAN_RTC_TMR_CTRL_BYP ;
 int FMAN_RTC_TMR_CTRL_CIPH ;
 int FMAN_RTC_TMR_CTRL_CKSEL_EXT_CLK ;
 int FMAN_RTC_TMR_CTRL_CKSEL_MAC_CLK ;
 int FMAN_RTC_TMR_CTRL_CKSEL_OSC_CLK ;
 int FMAN_RTC_TMR_CTRL_COPH ;
 int FMAN_RTC_TMR_CTRL_ETEP1 ;
 int FMAN_RTC_TMR_CTRL_TCLK_PERIOD_MASK ;
 int FMAN_RTC_TMR_CTRL_TCLK_PERIOD_SHIFT ;
 int FMAN_RTC_TMR_TEVENT_ALL ;
 int fman_rtc_ack_event (struct rtc_regs*,int ) ;
 int fman_rtc_set_frequency_compensation (struct rtc_regs*,int) ;
 int fman_rtc_set_interrupt_mask (struct rtc_regs*,int ) ;
 int fman_rtc_set_timer_alarm (struct rtc_regs*,int,int) ;
 int fman_rtc_set_timer_ctrl (struct rtc_regs*,int) ;
 int fman_rtc_set_timer_fiper (struct rtc_regs*,int,int) ;
 int fman_rtc_set_timer_offset (struct rtc_regs*,int ) ;
 int fman_rtc_timers_soft_reset (struct rtc_regs*) ;
 int iowrite32be (int,int *) ;

void fman_rtc_init(struct rtc_cfg *cfg, struct rtc_regs *regs, int num_alarms,
  int num_fipers, int num_ext_triggers, bool init_freq_comp,
  uint32_t freq_compensation, uint32_t output_clock_divisor)
{
 uint32_t tmr_ctrl;
 int i;

 fman_rtc_timers_soft_reset(regs);


 switch (cfg->src_clk) {
 case 128:
  tmr_ctrl = FMAN_RTC_TMR_CTRL_CKSEL_MAC_CLK;
  break;
 case 129:
  tmr_ctrl = FMAN_RTC_TMR_CTRL_CKSEL_OSC_CLK;
  break;
 default:

  tmr_ctrl = FMAN_RTC_TMR_CTRL_CKSEL_EXT_CLK;
  break;
 }



 tmr_ctrl |= ((1 << FMAN_RTC_TMR_CTRL_TCLK_PERIOD_SHIFT) &
    FMAN_RTC_TMR_CTRL_TCLK_PERIOD_MASK);

 if (cfg->invert_input_clk_phase)
  tmr_ctrl |= FMAN_RTC_TMR_CTRL_CIPH;
 if (cfg->invert_output_clk_phase)
  tmr_ctrl |= FMAN_RTC_TMR_CTRL_COPH;

 for (i = 0; i < num_alarms; i++) {
  if (cfg->alarm_polarity[i] ==
   E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW)
   tmr_ctrl |= (FMAN_RTC_TMR_CTRL_ALMP1 >> i);
 }

 for (i = 0; i < num_ext_triggers; i++)
  if (cfg->trigger_polarity[i] ==
   E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE)
   tmr_ctrl |= (FMAN_RTC_TMR_CTRL_ETEP1 << i);

 if (!cfg->timer_slave_mode && cfg->bypass)
  tmr_ctrl |= FMAN_RTC_TMR_CTRL_BYP;

 fman_rtc_set_timer_ctrl(regs, tmr_ctrl);
 if (init_freq_comp)
  fman_rtc_set_frequency_compensation(regs, freq_compensation);


 for (i = 0; i < num_alarms; i++)
  fman_rtc_set_timer_alarm(regs, i, 0xFFFFFFFFFFFFFFFFLL);


 fman_rtc_ack_event(regs, FMAN_RTC_TMR_TEVENT_ALL);


 fman_rtc_set_interrupt_mask(regs, 0);


 for (i = 0; i < num_fipers; i++)
  fman_rtc_set_timer_fiper(regs, i, 0xFFFFFFFF);


 iowrite32be(output_clock_divisor, &regs->tmr_prsc);


 fman_rtc_set_timer_offset(regs, 0);
}
