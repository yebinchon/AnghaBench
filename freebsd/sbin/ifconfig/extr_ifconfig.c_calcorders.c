
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifaddrs {struct ifaddrs* ifa_next; TYPE_1__* ifa_addr; int ifa_name; } ;
struct ifa_queue {int dummy; } ;
struct ifa_order_elt {unsigned int* af_orders; struct ifaddrs* ifa; int if_order; } ;
struct TYPE_2__ {unsigned int sa_family; } ;


 unsigned int ORDERS_SIZE (unsigned int*) ;
 int TAILQ_INSERT_TAIL (struct ifa_queue*,struct ifa_order_elt*,int ) ;
 struct ifa_order_elt* calloc (int,int) ;
 int link ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
calcorders(struct ifaddrs *ifa, struct ifa_queue *q)
{
 struct ifaddrs *prev;
 struct ifa_order_elt *cur;
 unsigned int ord, af, ifa_ord;

 prev = ((void*)0);
 cur = ((void*)0);
 ord = 0;
 ifa_ord = 0;

 while (ifa != ((void*)0)) {
  if (prev == ((void*)0) ||
      strcmp(ifa->ifa_name, prev->ifa_name) != 0) {
   cur = calloc(1, sizeof(*cur));

   if (cur == ((void*)0))
    return (-1);

   TAILQ_INSERT_TAIL(q, cur, link);
   cur->if_order = ifa_ord ++;
   cur->ifa = ifa;
   ord = 0;
  }

  if (ifa->ifa_addr) {
   af = ifa->ifa_addr->sa_family;

   if (af < ORDERS_SIZE(cur->af_orders) &&
       cur->af_orders[af] == 0)
    cur->af_orders[af] = ++ord;
  }
  prev = ifa;
  ifa = ifa->ifa_next;
 }

 return (0);
}
