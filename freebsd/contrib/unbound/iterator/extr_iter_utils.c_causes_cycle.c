
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct query_info {size_t qname_len; int * local_alias; void* qclass; void* qtype; int * qname; } ;
struct module_qstate {int is_valrec; int is_priming; TYPE_1__* env; } ;
struct TYPE_2__ {int (* detect_cycle ) (struct module_qstate*,struct query_info*,void*,int ,int ) ;} ;


 int BIT_CD ;
 int BIT_RD ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_detect_cycle (int (*) (struct module_qstate*,struct query_info*,void*,int ,int )) ;
 int stub1 (struct module_qstate*,struct query_info*,void*,int ,int ) ;

__attribute__((used)) static int
causes_cycle(struct module_qstate* qstate, uint8_t* name, size_t namelen,
 uint16_t t, uint16_t c)
{
 struct query_info qinf;
 qinf.qname = name;
 qinf.qname_len = namelen;
 qinf.qtype = t;
 qinf.qclass = c;
 qinf.local_alias = ((void*)0);
 fptr_ok(fptr_whitelist_modenv_detect_cycle(
  qstate->env->detect_cycle));
 return (*qstate->env->detect_cycle)(qstate, &qinf,
  (uint16_t)(BIT_RD|BIT_CD), qstate->is_priming,
  qstate->is_valrec);
}
