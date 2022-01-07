
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ th_thread; TYPE_2__* th_ta; } ;
typedef TYPE_1__ td_thrhandle_t ;
struct TYPE_5__ {scalar_t__ thread_off_report_events; int ph; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_err_e ;


 int P2T (int) ;
 int TDBG_FUNC () ;
 int ps_pwrite (int ,scalar_t__,int*,int) ;

__attribute__((used)) static td_err_e
pt_thr_event_enable(const td_thrhandle_t *th, int en)
{
 const td_thragent_t *ta = th->th_ta;
 int ret;

 TDBG_FUNC();
 ret = ps_pwrite(ta->ph, th->th_thread + ta->thread_off_report_events,
  &en, sizeof(int));
 return (P2T(ret));
}
