
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_lock; } ;


 int MUTEX_DESTROY (int *) ;
 int rpcb_proxy_init ;
 TYPE_1__ rpcbfr ;

void
ipf_p_rpcb_main_unload()
{
 if (rpcb_proxy_init == 1) {
  MUTEX_DESTROY(&rpcbfr.fr_lock);
  rpcb_proxy_init = 0;
 }
}
