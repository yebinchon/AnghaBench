
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_str3list {char* str; char* str2; char* str3; struct config_str3list* next; } ;


 scalar_t__ calloc (int,int) ;

int
cfg_str3list_insert(struct config_str3list** head, char* item, char* i2,
 char* i3)
{
 struct config_str3list *s;
 if(!item || !i2 || !i3 || !head)
  return 0;
 s = (struct config_str3list*)calloc(1, sizeof(struct config_str3list));
 if(!s)
  return 0;
 s->str = item;
 s->str2 = i2;
 s->str3 = i3;
 s->next = *head;
 *head = s;
 return 1;
}
