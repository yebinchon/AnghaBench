
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* key; scalar_t__ data; } ;
typedef TYPE_1__ ENTRY ;


 int FIND ;
 scalar_t__ hsearch_r (TYPE_1__,int ,TYPE_1__**,int *) ;
 int isgroup_map ;

__attribute__((used)) static int
is_a_group(char *name)
{
 ENTRY item;
 ENTRY *ret_item;

 item.key = name;
 if (hsearch_r(item, FIND, &ret_item, &isgroup_map) == 0)
  return (0);

 return (*(int *)ret_item->data);
}
