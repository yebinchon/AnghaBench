
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_3__ {int sin6_addr; } ;
struct in6_addrpolicy {TYPE_2__ addr; TYPE_1__ addrmask; } ;
struct policyqueue {struct in6_addrpolicy pc_policy; } ;
struct policyhead {int dummy; } ;
typedef int key ;




 struct policyqueue* TAILQ_FIRST (struct policyhead*) ;
 struct policyqueue* TAILQ_NEXT (struct policyqueue*,int ) ;
 int _map_v4v6_address (char*,char*) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int pc_entry ;

__attribute__((used)) static struct policyqueue *
match_addrselectpolicy(struct sockaddr *addr, struct policyhead *head)
{
 return(((void*)0));


}
