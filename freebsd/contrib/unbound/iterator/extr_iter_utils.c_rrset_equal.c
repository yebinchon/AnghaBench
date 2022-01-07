
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dname_len; scalar_t__ flags; scalar_t__ type; scalar_t__ rrset_class; int dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; scalar_t__ trust; scalar_t__ security; scalar_t__* rr_len; int * rr_data; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ query_dname_compare (int ,int ) ;

__attribute__((used)) static int
rrset_equal(struct ub_packed_rrset_key* k1, struct ub_packed_rrset_key* k2)
{
 struct packed_rrset_data* d1 = (struct packed_rrset_data*)
  k1->entry.data;
 struct packed_rrset_data* d2 = (struct packed_rrset_data*)
  k2->entry.data;
 size_t i, t;
 if(k1->rk.dname_len != k2->rk.dname_len ||
  k1->rk.flags != k2->rk.flags ||
  k1->rk.type != k2->rk.type ||
  k1->rk.rrset_class != k2->rk.rrset_class ||
  query_dname_compare(k1->rk.dname, k2->rk.dname) != 0)
  return 0;
 if(
  d1->count != d2->count ||
  d1->rrsig_count != d2->rrsig_count ||
  d1->trust != d2->trust ||
  d1->security != d2->security)
  return 0;
 t = d1->count + d1->rrsig_count;
 for(i=0; i<t; i++) {
  if(d1->rr_len[i] != d2->rr_len[i] ||

   memcmp(d1->rr_data[i], d2->rr_data[i],
    d1->rr_len[i]) != 0)
   return 0;
 }
 return 1;
}
