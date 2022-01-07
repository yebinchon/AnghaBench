
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sock_list {int addr; scalar_t__ len; struct sock_list* next; } ;
struct regional {int dummy; } ;
typedef scalar_t__ socklen_t ;


 int log_assert (struct sock_list**) ;
 int log_err (char*) ;
 int memmove (int *,struct sockaddr_storage*,scalar_t__) ;
 scalar_t__ regional_alloc (struct regional*,int) ;

void sock_list_insert(struct sock_list** list, struct sockaddr_storage* addr,
 socklen_t len, struct regional* region)
{
 struct sock_list* add = (struct sock_list*)regional_alloc(region,
  sizeof(*add) - sizeof(add->addr) + (size_t)len);
 if(!add) {
  log_err("out of memory in socketlist insert");
  return;
 }
 log_assert(list);
 add->next = *list;
 add->len = len;
 *list = add;
 if(len) memmove(&add->addr, addr, len);
}
