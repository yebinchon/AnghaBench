
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_t ;
typedef int td_thrhandle_t ;
struct TYPE_6__ {TYPE_1__* ta_ops; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_err_e ;
struct TYPE_5__ {int (* to_ta_map_id2thr ) (TYPE_2__ const*,int ,int *) ;} ;


 int stub1 (TYPE_2__ const*,int ,int *) ;

td_err_e
td_ta_map_id2thr(const td_thragent_t *ta, thread_t id, td_thrhandle_t *th)
{
 return (ta->ta_ops->to_ta_map_id2thr(ta, id, th));
}
