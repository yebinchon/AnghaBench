
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


 int P2T (int) ;
 int TDBG_FUNC () ;
 int ps_lcontinue (int ,int ) ;
 int ps_lstop (int ,int ) ;
 int pt_validate (TYPE_1__ const*) ;

__attribute__((used)) static td_err_e
pt_dbsuspend(const td_thrhandle_t *th, int suspend)
{
 const td_thragent_t *ta = th->th_ta;
 int ret;

 TDBG_FUNC();

 ret = pt_validate(th);
 if (ret)
  return (ret);

 if (suspend)
  ret = ps_lstop(ta->ph, th->th_tid);
 else
  ret = ps_lcontinue(ta->ph, th->th_tid);
 return (P2T(ret));
}
