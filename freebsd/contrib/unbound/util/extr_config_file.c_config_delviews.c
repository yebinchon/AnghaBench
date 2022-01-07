
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_view {struct config_view* next; } ;


 int config_delview (struct config_view*) ;

void
config_delviews(struct config_view* p)
{
 struct config_view* np;
 while(p) {
  np = p->next;
  config_delview(p);
  p = np;
 }
}
