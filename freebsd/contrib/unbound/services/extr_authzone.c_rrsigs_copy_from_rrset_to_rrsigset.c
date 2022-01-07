
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct auth_rrset {TYPE_1__* data; } ;
struct TYPE_2__ {size_t rrsig_count; size_t count; size_t* rr_len; int * rr_ttl; int ** rr_data; } ;


 scalar_t__ rdata_duplicate (TYPE_1__*,int *,size_t) ;
 int rrset_add_rr (struct auth_rrset*,int ,int *,size_t,int ) ;

__attribute__((used)) static int
rrsigs_copy_from_rrset_to_rrsigset(struct auth_rrset* rrset,
 struct auth_rrset* rrsigset)
{
 size_t i;
 if(rrset->data->rrsig_count == 0)
  return 1;



 for(i=rrset->data->count;
  i<rrset->data->count+rrset->data->rrsig_count; i++) {
  uint8_t* rdata = rrset->data->rr_data[i];
  size_t rdatalen = rrset->data->rr_len[i];
  time_t rr_ttl = rrset->data->rr_ttl[i];

  if(rdata_duplicate(rrsigset->data, rdata, rdatalen)) {
   continue;
  }
  if(!rrset_add_rr(rrsigset, rr_ttl, rdata, rdatalen, 0))
   return 0;
 }
 return 1;
}
