
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_stub {struct config_stub* next; int name; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct config_stub* cfg_stub_find(struct config_stub*** pp, const char* nm)
{
 struct config_stub* p = *(*pp);
 while(p) {
  if(strcmp(p->name, nm) == 0)
   return p;
  (*pp) = &p->next;
  p = p->next;
 }
 return ((void*)0);
}
