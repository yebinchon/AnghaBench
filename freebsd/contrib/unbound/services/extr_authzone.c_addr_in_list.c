
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct auth_addr {int addrlen; int addr; struct auth_addr* next; } ;
typedef int socklen_t ;


 scalar_t__ sockaddr_cmp_addr (struct sockaddr_storage*,int ,int *,int ) ;

__attribute__((used)) static int
addr_in_list(struct auth_addr* list, struct sockaddr_storage* addr,
 socklen_t addrlen)
{
 struct auth_addr* p;
 for(p=list; p; p=p->next) {
  if(sockaddr_cmp_addr(addr, addrlen, &p->addr, p->addrlen)==0)
   return 1;
 }
 return 0;
}
