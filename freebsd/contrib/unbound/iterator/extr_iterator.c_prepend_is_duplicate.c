
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ rrset_class; scalar_t__ dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 scalar_t__ query_dname_compare (int ,int ) ;

__attribute__((used)) static int
prepend_is_duplicate(struct ub_packed_rrset_key** sets, size_t to,
 struct ub_packed_rrset_key* dup)
{
 size_t i;
 for(i=0; i<to; i++) {
  if(sets[i]->rk.type == dup->rk.type &&
   sets[i]->rk.rrset_class == dup->rk.rrset_class &&
   sets[i]->rk.dname_len == dup->rk.dname_len &&
   query_dname_compare(sets[i]->rk.dname, dup->rk.dname)
   == 0)
   return 1;
 }
 return 0;
}
