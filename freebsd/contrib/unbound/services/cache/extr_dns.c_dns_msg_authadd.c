
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct regional {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct TYPE_2__ {int ns_numrrsets; int rrset_count; int * rrsets; } ;


 int packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;

int
dns_msg_authadd(struct dns_msg* msg, struct regional* region,
 struct ub_packed_rrset_key* rrset, time_t now)
{
 if(!(msg->rep->rrsets[msg->rep->rrset_count++] =
  packed_rrset_copy_region(rrset, region, now)))
  return 0;
 msg->rep->ns_numrrsets++;
 return 1;
}
