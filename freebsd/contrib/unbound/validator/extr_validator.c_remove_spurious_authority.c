
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reply_info {size_t an_numrrsets; int ns_numrrsets; TYPE_3__** rrsets; } ;
struct packed_rrset_data {scalar_t__ rrsig_count; } ;
struct TYPE_5__ {int dname; int type; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ rk; TYPE_1__ entry; } ;


 scalar_t__ LDNS_RR_TYPE_NS ;
 int VERB_ALGO ;
 int log_rrset_key (int ,char*,TYPE_3__*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int val_reply_remove_auth (struct reply_info*,size_t) ;

__attribute__((used)) static void
remove_spurious_authority(struct reply_info* chase_reply,
 struct reply_info* orig_reply)
{
 size_t i, found = 0;
 int remove = 0;

 if(chase_reply->an_numrrsets == 0 && chase_reply->ns_numrrsets == 1)
  return;

 for(i = chase_reply->an_numrrsets;
  i < chase_reply->an_numrrsets+chase_reply->ns_numrrsets; i++) {
  struct packed_rrset_data* d = (struct packed_rrset_data*)
   chase_reply->rrsets[i]->entry.data;
  if(ntohs(chase_reply->rrsets[i]->rk.type) == LDNS_RR_TYPE_NS
   && d->rrsig_count == 0) {
   found = i;
   remove = 1;
   break;
  }
 }

 if(!remove) return;
 log_rrset_key(VERB_ALGO, "Removing spurious unsigned NS record "
  "(likely inserted by forwarder)", chase_reply->rrsets[found]);


 for(i = orig_reply->an_numrrsets;
  i < orig_reply->an_numrrsets+orig_reply->ns_numrrsets; i++) {
  if(ntohs(orig_reply->rrsets[i]->rk.type) == LDNS_RR_TYPE_NS
   && query_dname_compare(orig_reply->rrsets[i]->rk.dname,
    chase_reply->rrsets[found]->rk.dname) == 0) {

   val_reply_remove_auth(orig_reply, i);
   break;
  }
 }

 val_reply_remove_auth(chase_reply, found);
}
