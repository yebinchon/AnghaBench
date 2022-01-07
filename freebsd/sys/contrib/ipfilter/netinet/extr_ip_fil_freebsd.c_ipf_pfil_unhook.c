
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ipf_inet6_hook ;
 int V_ipf_inet_hook ;
 int pfil_remove_hook (int ) ;

int ipf_pfil_unhook(void) {

 pfil_remove_hook(V_ipf_inet_hook);





 return (0);
}
