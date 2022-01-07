
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sock_list {scalar_t__ len; struct sock_list* next; int addr; } ;
typedef scalar_t__ socklen_t ;


 scalar_t__ sockaddr_cmp_addr (struct sockaddr_storage*,scalar_t__,int *,scalar_t__) ;

int sock_list_find(struct sock_list* list, struct sockaddr_storage* addr,
        socklen_t len)
{
 while(list) {
  if(len == list->len) {
   if(len == 0 || sockaddr_cmp_addr(addr, len,
    &list->addr, list->len) == 0)
    return 1;
  }
  list = list->next;
 }
 return 0;
}
