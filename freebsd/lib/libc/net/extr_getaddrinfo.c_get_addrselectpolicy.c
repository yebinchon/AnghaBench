
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addrpolicy {int dummy; } ;
struct policyqueue {struct in6_addrpolicy pc_policy; } ;
struct policyhead {int dummy; } ;


 int CTL_NET ;
 int IPPROTO_IPV6 ;
 int IPV6CTL_ADDRCTLPOLICY ;
 int PF_INET6 ;
 int TAILQ_INSERT_TAIL (struct policyhead*,struct policyqueue*,int ) ;
 int free (char*) ;
 int free_addrselectpolicy (struct policyhead*) ;
 void* malloc (int) ;
 int nitems (int*) ;
 int pc_entry ;
 scalar_t__ sysctl (int*,int ,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
get_addrselectpolicy(struct policyhead *head)
{
 return (0);

}
