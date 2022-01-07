
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct reply_info {size_t rrset_count; size_t an_numrrsets; size_t ns_numrrsets; size_t ar_numrrsets; TYPE_2__** rrsets; } ;
struct TYPE_3__ {int dname; int type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;
 scalar_t__ rrset_has_signer (TYPE_2__*,int *,size_t) ;

void
val_fill_reply(struct reply_info* chase, struct reply_info* orig,
 size_t skip, uint8_t* name, size_t len, uint8_t* signer)
{
 size_t i;
 int seen_dname = 0;
 chase->rrset_count = 0;
 chase->an_numrrsets = 0;
 chase->ns_numrrsets = 0;
 chase->ar_numrrsets = 0;

 for(i=skip; i<orig->an_numrrsets; i++) {
  if(!signer) {
   if(query_dname_compare(name,
    orig->rrsets[i]->rk.dname) == 0)
    chase->rrsets[chase->an_numrrsets++] =
     orig->rrsets[i];
  } else if(seen_dname && ntohs(orig->rrsets[i]->rk.type) ==
   LDNS_RR_TYPE_CNAME) {
   chase->rrsets[chase->an_numrrsets++] = orig->rrsets[i];
   seen_dname = 0;
  } else if(rrset_has_signer(orig->rrsets[i], name, len)) {
   chase->rrsets[chase->an_numrrsets++] = orig->rrsets[i];
   if(ntohs(orig->rrsets[i]->rk.type) ==
    LDNS_RR_TYPE_DNAME) {
     seen_dname = 1;
   }
  }
 }

 for(i = (skip > orig->an_numrrsets)?skip:orig->an_numrrsets;
  i<orig->an_numrrsets+orig->ns_numrrsets;
  i++) {
  if(!signer) {
   if(query_dname_compare(name,
    orig->rrsets[i]->rk.dname) == 0)
    chase->rrsets[chase->an_numrrsets+
        chase->ns_numrrsets++] = orig->rrsets[i];
  } else if(rrset_has_signer(orig->rrsets[i], name, len)) {
   chase->rrsets[chase->an_numrrsets+
    chase->ns_numrrsets++] = orig->rrsets[i];
  }
 }

 for(i= (skip>orig->an_numrrsets+orig->ns_numrrsets)?
  skip:orig->an_numrrsets+orig->ns_numrrsets;
  i<orig->rrset_count; i++) {
  if(!signer) {
   if(query_dname_compare(name,
    orig->rrsets[i]->rk.dname) == 0)
       chase->rrsets[chase->an_numrrsets
    +orig->ns_numrrsets+chase->ar_numrrsets++]
    = orig->rrsets[i];
  } else if(rrset_has_signer(orig->rrsets[i], name, len)) {
   chase->rrsets[chase->an_numrrsets+orig->ns_numrrsets+
    chase->ar_numrrsets++] = orig->rrsets[i];
  }
 }
 chase->rrset_count = chase->an_numrrsets + chase->ns_numrrsets +
  chase->ar_numrrsets;
}
