
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
typedef int psaddr_t ;
struct TYPE_6__ {int (* to_thr_tls_get_addr ) (TYPE_2__ const*,int ,size_t,int *) ;} ;


 int stub1 (TYPE_2__ const*,int ,size_t,int *) ;

td_err_e
td_thr_tls_get_addr(const td_thrhandle_t *th, psaddr_t linkmap, size_t offset,
    psaddr_t *address)
{
 const td_thragent_t *ta = th->th_ta;
 return (ta->ta_ops->to_thr_tls_get_addr(th, linkmap, offset, address));
}
