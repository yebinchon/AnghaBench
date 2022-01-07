
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rtc_regs {TYPE_1__* tmr_alarm; } ;
struct TYPE_2__ {int tmr_alarm_l; } ;


 int iowrite32be (int ,int *) ;

void fman_rtc_set_timer_alarm_l(struct rtc_regs *regs, int index, uint32_t val)
{
 iowrite32be(val, &regs->tmr_alarm[index].tmr_alarm_l);
}
