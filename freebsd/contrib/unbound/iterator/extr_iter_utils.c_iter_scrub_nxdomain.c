
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct TYPE_2__ {scalar_t__ an_numrrsets; int rrsets; int rrset_count; } ;


 int memmove (int,int,int) ;

void
iter_scrub_nxdomain(struct dns_msg* msg)
{
 if(msg->rep->an_numrrsets == 0)
  return;

 memmove(msg->rep->rrsets, msg->rep->rrsets+msg->rep->an_numrrsets,
  sizeof(struct ub_packed_rrset_key*) *
  (msg->rep->rrset_count-msg->rep->an_numrrsets));
 msg->rep->rrset_count -= msg->rep->an_numrrsets;
 msg->rep->an_numrrsets = 0;
}
