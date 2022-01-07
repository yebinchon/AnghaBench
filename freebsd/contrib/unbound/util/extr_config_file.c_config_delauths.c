
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_auth {struct config_auth* next; } ;


 int config_delauth (struct config_auth*) ;

void
config_delauths(struct config_auth* p)
{
 struct config_auth* np;
 while(p) {
  np = p->next;
  config_delauth(p);
  p = np;
 }
}
