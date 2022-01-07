
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_str3list {struct config_str3list* str3; struct config_str3list* str2; struct config_str3list* str; struct config_str3list* next; } ;


 int free (struct config_str3list*) ;

void
config_deltrplstrlist(struct config_str3list* p)
{
 struct config_str3list *np;
 while(p) {
  np = p->next;
  free(p->str);
  free(p->str2);
  free(p->str3);
  free(p);
  p = np;
 }
}
