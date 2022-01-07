
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ rrset_class; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 int dname_canonical_compare (int ,int ) ;
 scalar_t__ ntohs (scalar_t__) ;

__attribute__((used)) static int
rrset_canonical_sort_cmp(const void* x, const void* y)
{
 struct ub_packed_rrset_key* rrx = *(struct ub_packed_rrset_key**)x;
 struct ub_packed_rrset_key* rry = *(struct ub_packed_rrset_key**)y;
 int r = dname_canonical_compare(rrx->rk.dname, rry->rk.dname);
 if(r != 0)
  return r;
 if(rrx->rk.type != rry->rk.type) {
  if(ntohs(rrx->rk.type) > ntohs(rry->rk.type))
   return 1;
  else return -1;
 }
 if(rrx->rk.rrset_class != rry->rk.rrset_class) {
  if(ntohs(rrx->rk.rrset_class) > ntohs(rry->rk.rrset_class))
   return 1;
  else return -1;
 }
 return 0;
}
