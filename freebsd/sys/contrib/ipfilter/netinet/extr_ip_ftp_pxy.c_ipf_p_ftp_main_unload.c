
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_lock; } ;


 int MUTEX_DESTROY (int *) ;
 TYPE_1__ ftppxyfr ;
 int ipf_p_ftp_proxy_init ;

void
ipf_p_ftp_main_unload()
{

 if (ipf_p_ftp_proxy_init == 1) {
  MUTEX_DESTROY(&ftppxyfr.fr_lock);
  ipf_p_ftp_proxy_init = 0;
 }
}
