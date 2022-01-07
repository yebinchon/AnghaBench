
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct delegpt_addr {struct delegpt_addr* next_target; int addr; int addrlen; } ;
struct delegpt {struct delegpt_addr* target_list; } ;
typedef int socklen_t ;


 scalar_t__ sockaddr_cmp_addr (struct sockaddr_storage*,int ,int *,int ) ;

struct delegpt_addr*
delegpt_find_addr(struct delegpt* dp, struct sockaddr_storage* addr,
 socklen_t addrlen)
{
 struct delegpt_addr* p = dp->target_list;
 while(p) {
  if(sockaddr_cmp_addr(addr, addrlen, &p->addr, p->addrlen)==0
   && ((struct sockaddr_in*)addr)->sin_port ==
      ((struct sockaddr_in*)&p->addr)->sin_port) {
   return p;
  }
  p = p->next_target;
 }
 return ((void*)0);
}
