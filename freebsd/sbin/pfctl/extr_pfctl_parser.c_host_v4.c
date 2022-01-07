
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * addr32; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {TYPE_2__ a; } ;
struct TYPE_8__ {TYPE_3__ v; } ;
struct node_host {struct node_host* tail; int * next; TYPE_4__ addr; int af; int * ifname; } ;
struct in_addr {int s_addr; } ;
typedef int ina ;


 int AF_INET ;
 struct node_host* calloc (int,int) ;
 int err (int,char*) ;
 int inet_net_pton (int ,char const*,struct in_addr*,int) ;
 int inet_pton (int ,char const*,struct in_addr*) ;
 int memset (struct in_addr*,int ,int) ;
 int set_ipmask (struct node_host*,int) ;
 int * strrchr (char const*,char) ;

struct node_host *
host_v4(const char *s, int mask)
{
 struct node_host *h = ((void*)0);
 struct in_addr ina;
 int bits = 32;

 memset(&ina, 0, sizeof(struct in_addr));
 if (strrchr(s, '/') != ((void*)0)) {
  if ((bits = inet_net_pton(AF_INET, s, &ina, sizeof(ina))) == -1)
   return (((void*)0));
 } else {
  if (inet_pton(AF_INET, s, &ina) != 1)
   return (((void*)0));
 }

 h = calloc(1, sizeof(struct node_host));
 if (h == ((void*)0))
  err(1, "address: calloc");
 h->ifname = ((void*)0);
 h->af = AF_INET;
 h->addr.v.a.addr.addr32[0] = ina.s_addr;
 set_ipmask(h, bits);
 h->next = ((void*)0);
 h->tail = h;

 return (h);
}
