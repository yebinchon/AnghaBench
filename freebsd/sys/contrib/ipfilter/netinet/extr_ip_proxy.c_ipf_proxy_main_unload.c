
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* apr_unload ) () ;struct TYPE_4__* apr_next; scalar_t__ apr_p; } ;
typedef TYPE_1__ aproxy_t ;


 TYPE_1__* ap_proxylist ;
 TYPE_1__* ips_proxies ;
 int stub1 () ;
 int stub2 () ;

int
ipf_proxy_main_unload()
{
 aproxy_t *ap;

 for (ap = ips_proxies; ap->apr_p; ap++)
  if (ap->apr_unload != ((void*)0))
   (*ap->apr_unload)();
 for (ap = ap_proxylist; ap; ap = ap->apr_next)
  if (ap->apr_unload != ((void*)0))
   (*ap->apr_unload)();

 return 0;
}
