
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regional {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct auth_zone {int dclass; } ;
struct auth_rrset {int type; } ;
struct auth_data {int namelen; int name; } ;
struct TYPE_2__ {scalar_t__ ns_numrrsets; scalar_t__ ar_numrrsets; size_t rrset_count; int an_numrrsets; int * rrsets; } ;


 int auth_packed_rrset_copy_region (struct auth_zone*,struct auth_data*,struct auth_rrset*,struct regional*,int ) ;
 int log_assert (int) ;
 int msg_grow_array (struct regional*,struct dns_msg*) ;
 scalar_t__ msg_rrset_duplicate (struct dns_msg*,int ,int ,int ,int ) ;
 int msg_ttl (struct dns_msg*) ;

__attribute__((used)) static int
msg_add_rrset_an(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, struct auth_data* node, struct auth_rrset* rrset)
{
 log_assert(msg->rep->ns_numrrsets == 0);
 log_assert(msg->rep->ar_numrrsets == 0);
 if(!rrset || !node)
  return 1;
 if(msg_rrset_duplicate(msg, node->name, node->namelen, rrset->type,
  z->dclass))
  return 1;

 if(!msg_grow_array(region, msg))
  return 0;

 if(!(msg->rep->rrsets[msg->rep->rrset_count] =
  auth_packed_rrset_copy_region(z, node, rrset, region, 0)))
  return 0;
 msg->rep->rrset_count++;
 msg->rep->an_numrrsets++;
 msg_ttl(msg);
 return 1;
}
