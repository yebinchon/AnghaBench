
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct module_qstate {TYPE_2__* env; } ;
typedef int b ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int val_log_level; int log_servfail; } ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_str (int *,char*) ;
 int errinf (struct module_qstate*,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;

void errinf_dname(struct module_qstate* qstate, const char* str, uint8_t* dname)
{
 char b[1024];
 char buf[LDNS_MAX_DOMAINLEN+1];
 if((qstate->env->cfg->val_log_level < 2 && !qstate->env->cfg->log_servfail) || !str || !dname)
  return;
 dname_str(dname, buf);
 snprintf(b, sizeof(b), "%s %s", str, buf);
 errinf(qstate, b);
}
