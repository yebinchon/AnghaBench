
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int dname_len; void* rrset_class; void* type; void* dname; } ;
struct TYPE_3__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int security; int trust; } ;


 void* htons (int ) ;
 int log_err (char*) ;
 void* regional_alloc_zero (struct regional*,int) ;
 int rrset_trust_prim_noglue ;
 int sec_status_insecure ;

__attribute__((used)) static struct ub_packed_rrset_key*
new_rrset(struct regional* region, uint16_t rrtype, uint16_t rrclass)
{
 struct packed_rrset_data* pd;
 struct ub_packed_rrset_key* rrset = regional_alloc_zero(
  region, sizeof(*rrset));
 if(!rrset) {
  log_err("out of memory");
  return ((void*)0);
 }
 rrset->entry.key = rrset;
 pd = regional_alloc_zero(region, sizeof(*pd));
 if(!pd) {
  log_err("out of memory");
  return ((void*)0);
 }
 pd->trust = rrset_trust_prim_noglue;
 pd->security = sec_status_insecure;
 rrset->entry.data = pd;
 rrset->rk.dname = regional_alloc_zero(region, 1);
 if(!rrset->rk.dname) {
  log_err("out of memory");
  return ((void*)0);
 }
 rrset->rk.dname_len = 1;
 rrset->rk.type = htons(rrtype);
 rrset->rk.rrset_class = htons(rrclass);
 return rrset;
}
