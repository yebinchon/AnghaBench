
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfg; } ;
struct worker {TYPE_1__ env; } ;
typedef int RES ;


 int config_get_option (int ,char*,int ,int *) ;
 int remote_get_opt_ssl ;
 int ssl_printf (int *,char*) ;

__attribute__((used)) static void
do_get_option(RES* ssl, struct worker* worker, char* arg)
{
 int r;
 r = config_get_option(worker->env.cfg, arg, remote_get_opt_ssl, ssl);
 if(!r) {
  (void)ssl_printf(ssl, "error unknown option\n");
  return;
 }
}
