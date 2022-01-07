
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ta_ops; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_thr_state_e ;
typedef int td_thr_iter_f ;
typedef int td_err_e ;
typedef int sigset_t ;
struct TYPE_5__ {int (* to_ta_thr_iter ) (TYPE_2__ const*,int *,void*,int ,int,int *,unsigned int) ;} ;


 int stub1 (TYPE_2__ const*,int *,void*,int ,int,int *,unsigned int) ;

td_err_e
td_ta_thr_iter(const td_thragent_t *ta, td_thr_iter_f *callback,
    void *cbdata_p, td_thr_state_e state, int ti_pri, sigset_t *ti_sigmask_p,
    unsigned int ti_user_flags)
{
 return (ta->ta_ops->to_ta_thr_iter(ta, callback, cbdata_p, state,
      ti_pri, ti_sigmask_p, ti_user_flags));
}
