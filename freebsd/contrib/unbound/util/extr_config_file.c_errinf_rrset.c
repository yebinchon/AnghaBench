
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
struct TYPE_6__ {int dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; } ;
struct module_qstate {TYPE_2__* env; } ;
typedef int c ;
typedef int buf ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {int val_log_level; int log_servfail; } ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_str (int ,char*) ;
 int errinf (struct module_qstate*,char*) ;
 int ntohs (int ) ;
 int sldns_wire2str_class_buf (int ,char*,int) ;
 int sldns_wire2str_type_buf (int ,char*,int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;

void errinf_rrset(struct module_qstate* qstate, struct ub_packed_rrset_key *rr)
{
 char buf[1024];
 char dname[LDNS_MAX_DOMAINLEN+1];
 char t[16], c[16];
 if((qstate->env->cfg->val_log_level < 2 && !qstate->env->cfg->log_servfail) || !rr)
  return;
 sldns_wire2str_type_buf(ntohs(rr->rk.type), t, sizeof(t));
 sldns_wire2str_class_buf(ntohs(rr->rk.rrset_class), c, sizeof(c));
 dname_str(rr->rk.dname, dname);
 snprintf(buf, sizeof(buf), "for <%s %s %s>", dname, t, c);
 errinf(qstate, buf);
}
