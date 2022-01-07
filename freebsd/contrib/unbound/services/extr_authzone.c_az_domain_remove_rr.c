
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct auth_rrset {TYPE_1__* data; scalar_t__ type; } ;
struct auth_data {int dummy; } ;
struct TYPE_3__ {int count; int rrsig_count; } ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,scalar_t__) ;
 scalar_t__ az_rrset_find_rr (TYPE_1__*,int *,size_t,size_t*) ;
 scalar_t__ az_rrset_find_rrsig (TYPE_1__*,int *,size_t,size_t*) ;
 int domain_remove_rrset (struct auth_data*,scalar_t__) ;
 int rrset_remove_rr (struct auth_rrset*,size_t) ;
 scalar_t__ rrsig_rdata_get_type_covered (int *,size_t) ;
 int rrsigs_copy_from_rrset_to_rrsigset (struct auth_rrset*,struct auth_rrset*) ;

__attribute__((used)) static int
az_domain_remove_rr(struct auth_data* node, uint16_t rr_type,
 uint8_t* rdata, size_t rdatalen, int* nonexist)
{
 struct auth_rrset* rrset;
 size_t index = 0;


 if((rrset=az_domain_rrset(node, rr_type))!= ((void*)0)) {
  if(az_rrset_find_rr(rrset->data, rdata, rdatalen, &index)) {
   if(rrset->data->count == 1 &&
    rrset->data->rrsig_count == 0) {

    domain_remove_rrset(node, rr_type);
   } else if(rrset->data->count == 1 &&
    rrset->data->rrsig_count != 0) {


    struct auth_rrset* rrsigset = az_domain_rrset(
     node, LDNS_RR_TYPE_RRSIG);
    if(rrsigset) {


     rrsigs_copy_from_rrset_to_rrsigset(
      rrset, rrsigset);

     domain_remove_rrset(node, rr_type);
    } else {



     if(!rrset_remove_rr(rrset, index))
      return 0;
     rrset->type = LDNS_RR_TYPE_RRSIG;
     rrset->data->count = rrset->data->rrsig_count;
     rrset->data->rrsig_count = 0;
    }
   } else {

    if(!rrset_remove_rr(rrset, index))
     return 0;
   }
   return 1;
  }

 }


 if(rr_type == LDNS_RR_TYPE_RRSIG) {
  uint16_t ctype = rrsig_rdata_get_type_covered(rdata, rdatalen);
  if((rrset=az_domain_rrset(node, ctype))!= ((void*)0)) {
   if(az_rrset_find_rrsig(rrset->data, rdata, rdatalen,
    &index)) {




    if(!rrset_remove_rr(rrset, index))
     return 0;
    return 1;
   }
  }

 }


 if(nonexist) *nonexist = 1;
 return 1;
}
