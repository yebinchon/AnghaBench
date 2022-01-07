
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rrset_class; int type; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int log_nametypeclass (int,char const*,int ,int ,int ) ;
 int ntohs (int ) ;
 int verbosity ;

void log_rrset_key(enum verbosity_value v, const char* str,
 struct ub_packed_rrset_key* rrset)
{
 if(verbosity >= v)
  log_nametypeclass(v, str, rrset->rk.dname,
   ntohs(rrset->rk.type), ntohs(rrset->rk.rrset_class));
}
