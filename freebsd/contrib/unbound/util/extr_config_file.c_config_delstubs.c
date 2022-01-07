
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_stub {struct config_stub* next; } ;


 int config_delstub (struct config_stub*) ;

void
config_delstubs(struct config_stub* p)
{
 struct config_stub* np;
 while(p) {
  np = p->next;
  config_delstub(p);
  p = np;
 }
}
