
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int th_tid; TYPE_2__* th_ta; } ;
typedef TYPE_1__ td_thrhandle_t ;
struct TYPE_6__ {int ph; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_err_e ;
typedef int prfpregset_t ;


 int P2T (int) ;
 int TDBG_FUNC () ;
 int ps_lsetfpregs (int ,int ,int const*) ;
 int pt_validate (TYPE_1__ const*) ;

__attribute__((used)) static td_err_e
pt_thr_setfpregs(const td_thrhandle_t *th, const prfpregset_t *fpregs)
{
 const td_thragent_t *ta = th->th_ta;
 int ret;

 TDBG_FUNC();

 ret = pt_validate(th);
 if (ret)
  return (ret);

 ret = ps_lsetfpregs(ta->ph, th->th_tid, fpregs);
 return (P2T(ret));
}
