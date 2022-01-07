
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_lock; } ;


 int MUTEX_DESTROY (int *) ;
 int tftp_proxy_init ;
 TYPE_1__ tftpfr ;

void
ipf_p_tftp_main_unload()
{

 if (tftp_proxy_init == 1) {
  MUTEX_DESTROY(&tftpfr.fr_lock);
  tftp_proxy_init = 0;
 }
}
