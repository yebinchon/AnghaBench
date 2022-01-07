
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_event_mask_addr; int ph; } ;
typedef TYPE_1__ td_thragent_t ;
typedef int td_thr_events_t ;
typedef int td_err_e ;
typedef int mask ;


 int P2T (int) ;
 int TDBG_FUNC () ;
 int ps_pread (int ,int ,int *,int) ;
 int ps_pwrite (int ,int ,int *,int) ;

__attribute__((used)) static td_err_e
pt_ta_set_event(const td_thragent_t *ta, td_thr_events_t *events)
{
 td_thr_events_t mask;
 int ret;

 TDBG_FUNC();
 ret = ps_pread(ta->ph, ta->thread_event_mask_addr, &mask,
  sizeof(mask));
 if (ret != 0)
  return (P2T(ret));
 mask |= *events;
 ret = ps_pwrite(ta->ph, ta->thread_event_mask_addr, &mask,
  sizeof(mask));
 return (P2T(ret));
}
