
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock_list {scalar_t__ len; int addr; struct sock_list* next; } ;
struct module_qstate {TYPE_2__* env; } ;
typedef int buf ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int val_log_level; int log_servfail; } ;


 int addr_to_str (int *,scalar_t__,char*,int) ;
 int errinf (struct module_qstate*,char*) ;
 int snprintf (char*,int,char*) ;
 int strlen (char*) ;

void errinf_origin(struct module_qstate* qstate, struct sock_list *origin)
{
 struct sock_list* p;
 if(qstate->env->cfg->val_log_level < 2 && !qstate->env->cfg->log_servfail)
  return;
 for(p=origin; p; p=p->next) {
  char buf[256];
  if(p == origin)
   snprintf(buf, sizeof(buf), "from ");
  else snprintf(buf, sizeof(buf), "and ");
  if(p->len == 0)
   snprintf(buf+strlen(buf), sizeof(buf)-strlen(buf),
    "cache");
  else
   addr_to_str(&p->addr, p->len, buf+strlen(buf),
    sizeof(buf)-strlen(buf));
  errinf(qstate, buf);
 }
}
