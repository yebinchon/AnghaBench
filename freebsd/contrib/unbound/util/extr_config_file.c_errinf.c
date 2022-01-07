
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_qstate {struct config_strlist* errinf; int region; TYPE_2__* env; } ;
struct config_strlist {struct config_strlist* next; int str; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int val_log_level; int log_servfail; } ;


 int log_err (char*) ;
 scalar_t__ regional_alloc (int ,int) ;
 int regional_strdup (int ,char const*) ;

void errinf(struct module_qstate* qstate, const char* str)
{
 struct config_strlist* p;
 if((qstate->env->cfg->val_log_level < 2 && !qstate->env->cfg->log_servfail) || !str)
  return;
 p = (struct config_strlist*)regional_alloc(qstate->region, sizeof(*p));
 if(!p) {
  log_err("malloc failure in validator-error-info string");
  return;
 }
 p->next = ((void*)0);
 p->str = regional_strdup(qstate->region, str);
 if(!p->str) {
  log_err("malloc failure in validator-error-info string");
  return;
 }

 if(qstate->errinf) {
  struct config_strlist* q = qstate->errinf;
  while(q->next)
   q = q->next;
  q->next = p;
 } else qstate->errinf = p;
}
