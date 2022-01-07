
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ta_ops; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_err_e ;
struct TYPE_6__ {int (* to_ta_delete ) (TYPE_2__*) ;} ;


 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int proclist ;
 int stub1 (TYPE_2__*) ;
 int ta_next ;

td_err_e
td_ta_delete(td_thragent_t *ta)
{
 TAILQ_REMOVE(&proclist, ta, ta_next);
 return (ta->ta_ops->to_ta_delete(ta));
}
