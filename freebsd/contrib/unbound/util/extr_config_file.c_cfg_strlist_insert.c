
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {char* str; struct config_strlist* next; } ;


 scalar_t__ calloc (int,int) ;
 int free (char*) ;

int
cfg_strlist_insert(struct config_strlist** head, char* item)
{
 struct config_strlist *s;
 if(!item || !head) {
  free(item);
  return 0;
 }
 s = (struct config_strlist*)calloc(1, sizeof(struct config_strlist));
 if(!s) {
  free(item);
  return 0;
 }
 s->str = item;
 s->next = *head;
 *head = s;
 return 1;
}
