
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct regional {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct TYPE_2__ {size_t rrset_count; int ar_numrrsets; int * rrsets; } ;


 int packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;

__attribute__((used)) static void
addr_to_additional(struct ub_packed_rrset_key* rrset, struct regional* region,
 struct dns_msg* msg, time_t now)
{
 if((msg->rep->rrsets[msg->rep->rrset_count] =
  packed_rrset_copy_region(rrset, region, now))) {
  msg->rep->ar_numrrsets++;
  msg->rep->rrset_count++;
 }
}
