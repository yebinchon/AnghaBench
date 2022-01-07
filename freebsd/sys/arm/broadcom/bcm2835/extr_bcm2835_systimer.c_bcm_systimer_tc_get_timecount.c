
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int dummy; } ;


 int SYSTIMER_CLO ;
 int * bcm_systimer_sc ;
 int bcm_systimer_tc_read_4 (int ) ;

__attribute__((used)) static unsigned
bcm_systimer_tc_get_timecount(struct timecounter *tc)
{
 if (bcm_systimer_sc == ((void*)0))
  return (0);

 return bcm_systimer_tc_read_4(SYSTIMER_CLO);
}
