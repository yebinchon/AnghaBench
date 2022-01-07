
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_lock; } ;


 int MUTEX_DESTROY (int *) ;
 int irc_proxy_init ;
 TYPE_1__ ircnatfr ;

void
ipf_p_irc_main_unload()
{
 if (irc_proxy_init == 1) {
  MUTEX_DESTROY(&ircnatfr.fr_lock);
  irc_proxy_init = 0;
 }
}
