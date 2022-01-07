
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {int str; struct config_strlist* next; } ;
struct config_auth {struct config_strlist* allow_notify; struct config_strlist* masters; struct config_strlist* urls; } ;
struct auth_master {int http; int ixfr; int allow_notify; void* host; int ssl; int port; int file; struct auth_master* next; } ;


 struct auth_master* auth_master_new (struct auth_master***) ;
 int log_err (char*) ;
 int parse_url (int ,void**,int *,int *,int *) ;
 void* strdup (int ) ;

int
xfer_set_masters(struct auth_master** list, struct config_auth* c,
 int with_http)
{
 struct auth_master* m;
 struct config_strlist* p;

 while(*list) {
  list = &( (*list)->next );
 }
 if(with_http)
   for(p = c->urls; p; p = p->next) {
  m = auth_master_new(&list);
  m->http = 1;
  if(!parse_url(p->str, &m->host, &m->file, &m->port, &m->ssl))
   return 0;
 }
 for(p = c->masters; p; p = p->next) {
  m = auth_master_new(&list);
  m->ixfr = 1;
  m->host = strdup(p->str);
  if(!m->host) {
   log_err("malloc failure");
   return 0;
  }
 }
 for(p = c->allow_notify; p; p = p->next) {
  m = auth_master_new(&list);
  m->allow_notify = 1;
  m->host = strdup(p->str);
  if(!m->host) {
   log_err("malloc failure");
   return 0;
  }
 }
 return 1;
}
