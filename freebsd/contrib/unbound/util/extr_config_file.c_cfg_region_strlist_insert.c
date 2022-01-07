
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;


 scalar_t__ regional_alloc_zero (struct regional*,int) ;

int
cfg_region_strlist_insert(struct regional* region,
 struct config_strlist** head, char* item)
{
 struct config_strlist *s;
 if(!item || !head)
  return 0;
 s = (struct config_strlist*)regional_alloc_zero(region,
  sizeof(struct config_strlist));
 if(!s)
  return 0;
 s->str = item;
 s->next = *head;
 *head = s;
 return 1;
}
