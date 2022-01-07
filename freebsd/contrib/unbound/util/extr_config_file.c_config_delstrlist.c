
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {struct config_strlist* str; struct config_strlist* next; } ;


 int free (struct config_strlist*) ;

void
config_delstrlist(struct config_strlist* p)
{
 struct config_strlist *np;
 while(p) {
  np = p->next;
  free(p->str);
  free(p);
  p = np;
 }
}
