
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pfctl_altq {int dummy; } ;
typedef int key ;
struct TYPE_4__ {char* key; struct pfctl_altq* data; } ;
typedef TYPE_1__ ENTRY ;


 int FIND ;
 int IFNAMSIZ ;
 int PF_QNAME_SIZE ;
 scalar_t__ hsearch_r (TYPE_1__,int ,TYPE_1__**,int *) ;
 int queue_map ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static struct pfctl_altq *
qname_to_pfaltq(const char *qname, const char *ifname)
{
 ENTRY item;
 ENTRY *ret_item;
 char key[IFNAMSIZ + PF_QNAME_SIZE];

 item.key = key;
 snprintf(item.key, sizeof(key), "%s:%s", ifname, qname);
 if (hsearch_r(item, FIND, &ret_item, &queue_map) == 0)
  return (((void*)0));

 return (ret_item->data);
}
