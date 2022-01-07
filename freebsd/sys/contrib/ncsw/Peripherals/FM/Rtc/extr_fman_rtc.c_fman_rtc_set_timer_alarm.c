
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rtc_regs {TYPE_1__* tmr_alarm; } ;
typedef int int64_t ;
struct TYPE_2__ {int tmr_alarm_h; int tmr_alarm_l; } ;


 int iowrite32be (int ,int *) ;

void fman_rtc_set_timer_alarm(struct rtc_regs *regs, int index, int64_t val)
{
 iowrite32be((uint32_t)val, &regs->tmr_alarm[index].tmr_alarm_l);
 iowrite32be((uint32_t)(val >> 32), &regs->tmr_alarm[index].tmr_alarm_h);
}
