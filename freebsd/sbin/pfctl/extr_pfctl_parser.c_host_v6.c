
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct node_host {struct node_host* tail; int * next; int ifindex; TYPE_3__ addr; void* af; int * ifname; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_flags; int ai_socktype; void* ai_family; } ;
typedef int hints ;


 void* AF_INET6 ;
 int AI_NUMERICHOST ;
 int SOCK_DGRAM ;
 struct node_host* calloc (int,int) ;
 int err (int,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memcpy (int *,int *,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int set_ipmask (struct node_host*,int) ;

struct node_host *
host_v6(const char *s, int mask)
{
 struct addrinfo hints, *res;
 struct node_host *h = ((void*)0);

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_INET6;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_flags = AI_NUMERICHOST;
 if (getaddrinfo(s, "0", &hints, &res) == 0) {
  h = calloc(1, sizeof(struct node_host));
  if (h == ((void*)0))
   err(1, "address: calloc");
  h->ifname = ((void*)0);
  h->af = AF_INET6;
  memcpy(&h->addr.v.a.addr,
      &((struct sockaddr_in6 *)res->ai_addr)->sin6_addr,
      sizeof(h->addr.v.a.addr));
  h->ifindex =
      ((struct sockaddr_in6 *)res->ai_addr)->sin6_scope_id;
  set_ipmask(h, mask);
  freeaddrinfo(res);
  h->next = ((void*)0);
  h->tail = h;
 }

 return (h);
}
