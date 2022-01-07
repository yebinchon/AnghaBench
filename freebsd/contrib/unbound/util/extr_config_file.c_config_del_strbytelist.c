
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strbytelist {struct config_strbytelist* str2; struct config_strbytelist* str; struct config_strbytelist* next; } ;


 int free (struct config_strbytelist*) ;

void
config_del_strbytelist(struct config_strbytelist* p)
{
 struct config_strbytelist* np;
 while(p) {
  np = p->next;
  free(p->str);
  free(p->str2);
  free(p);
  p = np;
 }
}
