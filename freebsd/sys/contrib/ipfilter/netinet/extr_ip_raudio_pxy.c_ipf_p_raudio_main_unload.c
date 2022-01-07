
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_lock; } ;


 int MUTEX_DESTROY (int *) ;
 int raudio_proxy_init ;
 TYPE_1__ raudiofr ;

void
ipf_p_raudio_main_unload()
{
 if (raudio_proxy_init == 1) {
  MUTEX_DESTROY(&raudiofr.fr_lock);
  raudio_proxy_init = 0;
 }
}
