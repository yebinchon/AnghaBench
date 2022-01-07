
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* apr_load ) () ;scalar_t__ apr_p; } ;
typedef TYPE_1__ aproxy_t ;


 TYPE_1__* ips_proxies ;
 int stub1 () ;

int
ipf_proxy_main_load()
{
 aproxy_t *ap;

 for (ap = ips_proxies; ap->apr_p; ap++) {
  if (ap->apr_load != ((void*)0))
   (*ap->apr_load)();
 }
 return 0;
}
