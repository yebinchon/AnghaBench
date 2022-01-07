
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_str2list {char* str; char* str2; struct config_str2list* next; } ;


 scalar_t__ calloc (int,int) ;
 int free (char*) ;

int
cfg_str2list_insert(struct config_str2list** head, char* item, char* i2)
{
 struct config_str2list *s;
 if(!item || !i2 || !head) {
  free(item);
  free(i2);
  return 0;
 }
 s = (struct config_str2list*)calloc(1, sizeof(struct config_str2list));
 if(!s) {
  free(item);
  free(i2);
  return 0;
 }
 s->str = item;
 s->str2 = i2;
 s->next = *head;
 *head = s;
 return 1;
}
