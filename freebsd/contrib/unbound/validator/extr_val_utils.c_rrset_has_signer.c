
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; int* rr_len; scalar_t__* rr_data; } ;


 int dname_valid (scalar_t__,int) ;
 scalar_t__ query_dname_compare (int *,scalar_t__) ;

__attribute__((used)) static int
rrset_has_signer(struct ub_packed_rrset_key* rrset, uint8_t* name, size_t len)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
  entry.data;
 size_t i;
 for(i = d->count; i< d->count+d->rrsig_count; i++) {
  if(d->rr_len[i] > 2+18+len) {

   if(!dname_valid(d->rr_data[i]+2+18, d->rr_len[i]-2-18))
    continue;
   if(query_dname_compare(name, d->rr_data[i]+2+18) == 0)
   {
    return 1;
   }
  }
 }
 return 0;
}
