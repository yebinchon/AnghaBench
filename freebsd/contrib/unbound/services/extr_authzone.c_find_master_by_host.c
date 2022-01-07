
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_master {int host; struct auth_master* next; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct auth_master*
find_master_by_host(struct auth_master* list, char* host)
{
 struct auth_master* p;
 for(p=list; p; p=p->next) {
  if(strcmp(p->host, host) == 0)
   return p;
 }
 return ((void*)0);
}
