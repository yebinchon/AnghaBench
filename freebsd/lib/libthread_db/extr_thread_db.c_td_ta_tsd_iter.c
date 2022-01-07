
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ta_ops; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_key_iter_f ;
typedef int td_err_e ;
struct TYPE_5__ {int (* to_ta_tsd_iter ) (TYPE_2__ const*,int *,void*) ;} ;


 int stub1 (TYPE_2__ const*,int *,void*) ;

td_err_e
td_ta_tsd_iter(const td_thragent_t *ta, td_key_iter_f *callback,
    void *cbdata_p)
{
 return (ta->ta_ops->to_ta_tsd_iter(ta, callback, cbdata_p));
}
