
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regional {int dummy; } ;
struct TYPE_3__ {int qname_len; int qname; } ;
struct dns_msg {TYPE_1__ qinfo; TYPE_2__* rep; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int namelen; int name; } ;
struct TYPE_4__ {int flags; } ;


 int LDNS_RCODE_NXDOMAIN ;
 int az_add_negative_soa (struct auth_zone*,struct regional*,struct dns_msg*) ;
 int az_add_nsec3_proof (struct auth_zone*,struct regional*,struct dns_msg*,int ,int ,int ,int ,int ,int,int,int) ;
 struct auth_rrset* az_find_nsec_cover (struct auth_zone*,struct auth_data**) ;
 int az_nsec_wildcard_denial (struct auth_zone*,struct regional*,struct dns_msg*,int ,int ) ;
 int msg_add_rrset_ns (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_nxdomain_answer(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, struct auth_data* ce, struct auth_data* node)
{
 struct auth_rrset* nsec;
 msg->rep->flags |= LDNS_RCODE_NXDOMAIN;
 if(!az_add_negative_soa(z, region, msg)) return 0;
 if((nsec=az_find_nsec_cover(z, &node)) != ((void*)0)) {
  if(!msg_add_rrset_ns(z, region, msg, node, nsec)) return 0;
  if(ce && !az_nsec_wildcard_denial(z, region, msg, ce->name,
   ce->namelen)) return 0;
 } else if(ce) {
  if(!az_add_nsec3_proof(z, region, msg, ce->name,
   ce->namelen, msg->qinfo.qname,
   msg->qinfo.qname_len, 0, 1, 1, 1))
   return 0;
 }
 return 1;
}
