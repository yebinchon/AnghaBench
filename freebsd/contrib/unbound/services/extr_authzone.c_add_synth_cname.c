
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct regional {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct auth_zone {int dclass; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;
struct TYPE_2__ {size_t rrset_count; int an_numrrsets; struct ub_packed_rrset_key** rrsets; int flags; } ;


 int LDNS_RCODE_YXDOMAIN ;
 int create_synth_cname (int *,size_t,struct regional*,struct auth_data*,struct auth_rrset*,int ,struct ub_packed_rrset_key**) ;
 int msg_grow_array (struct regional*,struct dns_msg*) ;
 int msg_ttl (struct dns_msg*) ;

__attribute__((used)) static int
add_synth_cname(struct auth_zone* z, uint8_t* qname, size_t qname_len,
 struct regional* region, struct dns_msg* msg, struct auth_data* dname,
 struct auth_rrset* rrset)
{
 struct ub_packed_rrset_key* cname;

 if(!create_synth_cname(qname, qname_len, region, dname, rrset,
  z->dclass, &cname)) {

  return 0;
 }
 if(!cname) {

  msg->rep->flags |= LDNS_RCODE_YXDOMAIN;
  return 1;
 }

 if(!msg_grow_array(region, msg))
  return 0;
 msg->rep->rrsets[msg->rep->rrset_count] = cname;
 msg->rep->rrset_count++;
 msg->rep->an_numrrsets++;
 msg_ttl(msg);
 return 1;
}
