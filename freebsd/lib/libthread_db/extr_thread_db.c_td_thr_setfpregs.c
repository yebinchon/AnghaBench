
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* th_ta; } ;
typedef TYPE_2__ td_thrhandle_t ;
struct TYPE_8__ {TYPE_1__* ta_ops; } ;
typedef TYPE_3__ td_thragent_t ;
typedef int td_err_e ;
typedef int prfpregset_t ;
struct TYPE_6__ {int (* to_thr_setfpregs ) (TYPE_2__ const*,int const*) ;} ;


 int stub1 (TYPE_2__ const*,int const*) ;

td_err_e
td_thr_setfpregs(const td_thrhandle_t *th, const prfpregset_t *fpregs)
{
 const td_thragent_t *ta = th->th_ta;
 return (ta->ta_ops->to_thr_setfpregs(th, fpregs));
}
