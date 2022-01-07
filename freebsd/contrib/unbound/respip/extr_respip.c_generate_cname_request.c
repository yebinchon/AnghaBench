
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int subqi ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int qclass; int qtype; int qname; int qname_len; } ;
struct TYPE_3__ {int qclass; int qtype; } ;
struct module_qstate {TYPE_2__* env; TYPE_1__ qinfo; } ;
struct TYPE_4__ {int (* attach_sub ) (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**) ;} ;


 int BIT_RD ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_attach_sub (int (*) (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**)) ;
 int get_cname_target (struct ub_packed_rrset_key*,int *,int *) ;
 int memset (struct query_info*,int ,int) ;
 int stub1 (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**) ;

__attribute__((used)) static int
generate_cname_request(struct module_qstate* qstate,
 struct ub_packed_rrset_key* alias_rrset)
{
 struct module_qstate* subq = ((void*)0);
 struct query_info subqi;

 memset(&subqi, 0, sizeof(subqi));
 get_cname_target(alias_rrset, &subqi.qname, &subqi.qname_len);
 if(!subqi.qname)
  return 0;
 subqi.qtype = qstate->qinfo.qtype;
 subqi.qclass = qstate->qinfo.qclass;
 fptr_ok(fptr_whitelist_modenv_attach_sub(qstate->env->attach_sub));
 return (*qstate->env->attach_sub)(qstate, &subqi, BIT_RD, 0, 0, &subq);
}
