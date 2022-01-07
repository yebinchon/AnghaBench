
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pfctl_altq {int dummy; } ;
struct TYPE_4__ {char* key; struct pfctl_altq* data; } ;
typedef TYPE_1__ ENTRY ;


 int FIND ;
 scalar_t__ hsearch_r (TYPE_1__,int ,TYPE_1__**,int *) ;
 int if_map ;

__attribute__((used)) static struct pfctl_altq *
pfaltq_lookup(char *ifname)
{
 ENTRY item;
 ENTRY *ret_item;

 item.key = ifname;
 if (hsearch_r(item, FIND, &ret_item, &if_map) == 0)
  return (((void*)0));

 return (ret_item->data);
}
