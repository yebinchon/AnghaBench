
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct regional {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct TYPE_2__ {int rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 int memmove (struct ub_packed_rrset_key**,struct ub_packed_rrset_key**,int) ;
 void* regional_alloc_zero (struct regional*,int) ;

__attribute__((used)) static int
msg_grow_array(struct regional* region, struct dns_msg* msg)
{
 if(msg->rep->rrsets == ((void*)0)) {
  msg->rep->rrsets = regional_alloc_zero(region,
   sizeof(struct ub_packed_rrset_key*)*(msg->rep->rrset_count+1));
  if(!msg->rep->rrsets)
   return 0;
 } else {
  struct ub_packed_rrset_key** rrsets_old = msg->rep->rrsets;
  msg->rep->rrsets = regional_alloc_zero(region,
   sizeof(struct ub_packed_rrset_key*)*(msg->rep->rrset_count+1));
  if(!msg->rep->rrsets)
   return 0;
  memmove(msg->rep->rrsets, rrsets_old,
   sizeof(struct ub_packed_rrset_key*)*msg->rep->rrset_count);
 }
 return 1;
}
