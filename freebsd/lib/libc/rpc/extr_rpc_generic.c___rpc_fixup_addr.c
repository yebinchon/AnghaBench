
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct netbuf {scalar_t__ buf; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (int *) ;
 scalar_t__ IN6_IS_ADDR_SITELOCAL (int *) ;

int
__rpc_fixup_addr(struct netbuf *new, const struct netbuf *svc)
{
 return 1;
}
