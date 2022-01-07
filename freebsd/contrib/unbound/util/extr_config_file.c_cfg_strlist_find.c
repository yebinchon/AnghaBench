
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {struct config_strlist* next; int str; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct config_strlist*
cfg_strlist_find(struct config_strlist* head, const char *item)
{
 struct config_strlist *s = head;
 if(!head){
  return ((void*)0);
 }
 while(s) {
  if(strcmp(s->str, item) == 0) {
   return s;
  }
  s = s->next;
 }
 return ((void*)0);
}
