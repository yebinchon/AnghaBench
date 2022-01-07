
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {void* rrset_class; void* type; int dname_len; int dname; } ;
struct TYPE_3__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int security; int trust; } ;
struct local_rrset {struct ub_packed_rrset_key* rrset; struct local_rrset* next; } ;
struct local_data {int namelen; int name; struct local_rrset* rrsets; } ;


 void* htons (int ) ;
 int log_err (char*) ;
 scalar_t__ regional_alloc_zero (struct regional*,int) ;
 int rrset_trust_prim_noglue ;
 int sec_status_insecure ;

__attribute__((used)) static struct local_rrset*
new_local_rrset(struct regional* region, struct local_data* node,
 uint16_t rrtype, uint16_t rrclass)
{
 struct packed_rrset_data* pd;
 struct local_rrset* rrset = (struct local_rrset*)
  regional_alloc_zero(region, sizeof(*rrset));
 if(!rrset) {
  log_err("out of memory");
  return ((void*)0);
 }
 rrset->next = node->rrsets;
 node->rrsets = rrset;
 rrset->rrset = (struct ub_packed_rrset_key*)
  regional_alloc_zero(region, sizeof(*rrset->rrset));
 if(!rrset->rrset) {
  log_err("out of memory");
  return ((void*)0);
 }
 rrset->rrset->entry.key = rrset->rrset;
 pd = (struct packed_rrset_data*)regional_alloc_zero(region,
  sizeof(*pd));
 if(!pd) {
  log_err("out of memory");
  return ((void*)0);
 }
 pd->trust = rrset_trust_prim_noglue;
 pd->security = sec_status_insecure;
 rrset->rrset->entry.data = pd;
 rrset->rrset->rk.dname = node->name;
 rrset->rrset->rk.dname_len = node->namelen;
 rrset->rrset->rk.type = htons(rrtype);
 rrset->rrset->rk.rrset_class = htons(rrclass);
 return rrset;
}
