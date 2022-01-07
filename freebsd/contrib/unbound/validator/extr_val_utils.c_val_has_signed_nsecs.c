
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_3__** rrsets; } ;
struct packed_rrset_data {scalar_t__ rrsig_count; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ entry; TYPE_1__ rk; } ;


 int LDNS_RR_TYPE_NSEC ;
 int LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ htons (int ) ;

int val_has_signed_nsecs(struct reply_info* rep, char** reason)
{
 size_t i, num_nsec = 0, num_nsec3 = 0;
 struct packed_rrset_data* d;
 for(i=rep->an_numrrsets; i<rep->an_numrrsets+rep->ns_numrrsets; i++) {
  if(rep->rrsets[i]->rk.type == htons(LDNS_RR_TYPE_NSEC))
   num_nsec++;
  else if(rep->rrsets[i]->rk.type == htons(LDNS_RR_TYPE_NSEC3))
   num_nsec3++;
  else continue;
  d = (struct packed_rrset_data*)rep->rrsets[i]->entry.data;
  if(d && d->rrsig_count != 0) {
   return 1;
  }
 }
 if(num_nsec == 0 && num_nsec3 == 0)
  *reason = "no DNSSEC records";
 else if(num_nsec != 0)
  *reason = "no signatures over NSECs";
 else *reason = "no signatures over NSEC3s";
 return 0;
}
