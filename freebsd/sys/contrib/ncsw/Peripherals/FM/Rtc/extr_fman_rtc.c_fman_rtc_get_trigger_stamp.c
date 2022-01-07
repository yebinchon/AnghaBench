
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct rtc_regs {TYPE_1__* tmr_etts; } ;
struct TYPE_2__ {int tmr_etts_h; int tmr_etts_l; } ;


 scalar_t__ ioread32be (int *) ;

uint64_t fman_rtc_get_trigger_stamp(struct rtc_regs *regs, int id)
{
 uint64_t time;

 time = (uint64_t)ioread32be(&regs->tmr_etts[id].tmr_etts_l);
 time |= ((uint64_t)ioread32be(&regs->tmr_etts[id].tmr_etts_h)
  << 32);

 return time;
}
