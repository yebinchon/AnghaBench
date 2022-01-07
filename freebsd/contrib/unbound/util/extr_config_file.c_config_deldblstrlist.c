
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_str2list {struct config_str2list* str2; struct config_str2list* str; struct config_str2list* next; } ;


 int free (struct config_str2list*) ;

void
config_deldblstrlist(struct config_str2list* p)
{
 struct config_str2list *np;
 while(p) {
  np = p->next;
  free(p->str);
  free(p->str2);
  free(p);
  p = np;
 }
}
