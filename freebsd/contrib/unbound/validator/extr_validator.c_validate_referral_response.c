
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reply_info {int security; size_t rrset_count; TYPE_2__** rrsets; } ;
struct packed_rrset_data {int security; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;


 int VERB_ALGO ;
 int sec_status_secure ;
 int sec_status_to_string (int) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static void
validate_referral_response(struct reply_info* chase_reply)
{
 size_t i;
 enum sec_status s;

 chase_reply->security = sec_status_secure;
 for(i=0; i<chase_reply->rrset_count; i++) {
  s = ((struct packed_rrset_data*)chase_reply->rrsets[i]
   ->entry.data)->security;
  if(s < chase_reply->security)
   chase_reply->security = s;
 }
 verbose(VERB_ALGO, "validated part of referral response as %s",
  sec_status_to_string(chase_reply->security));
}
