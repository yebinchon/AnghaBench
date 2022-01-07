
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drift_comp ;
 int kern_enable ;
 scalar_t__ loop_started ;
 scalar_t__ pll_control ;
 int set_freq (int ) ;
 int start_kern_loop () ;
 int stop_kern_loop () ;

void
select_loop(
 int use_kern_loop
 )
{
 if (kern_enable == use_kern_loop)
  return;




 kern_enable = use_kern_loop;
}
