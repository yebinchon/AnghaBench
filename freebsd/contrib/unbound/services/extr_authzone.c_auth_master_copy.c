
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_master {struct auth_master* host; struct auth_master* file; scalar_t__ list; int * next; } ;


 scalar_t__ auth_addr_list_copy (scalar_t__) ;
 int free (struct auth_master*) ;
 int log_err (char*) ;
 scalar_t__ memdup (struct auth_master*,int) ;
 void* strdup (struct auth_master*) ;

__attribute__((used)) static struct auth_master*
auth_master_copy(struct auth_master* o)
{
 struct auth_master* m;
 if(!o) return ((void*)0);
 m = (struct auth_master*)memdup(o, sizeof(*o));
 if(!m) {
  log_err("malloc failure");
  return ((void*)0);
 }
 m->next = ((void*)0);
 if(m->host) {
  m->host = strdup(m->host);
  if(!m->host) {
   free(m);
   log_err("malloc failure");
   return ((void*)0);
  }
 }
 if(m->file) {
  m->file = strdup(m->file);
  if(!m->file) {
   free(m->host);
   free(m);
   log_err("malloc failure");
   return ((void*)0);
  }
 }
 if(m->list) {
  m->list = auth_addr_list_copy(m->list);
  if(!m->list) {
   free(m->file);
   free(m->host);
   free(m);
   return ((void*)0);
  }
 }
 return m;
}
