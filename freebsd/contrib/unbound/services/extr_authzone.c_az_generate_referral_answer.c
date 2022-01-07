
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regional {int dummy; } ;
struct TYPE_4__ {int qname_len; int qname; } ;
struct dns_msg {TYPE_2__ qinfo; TYPE_1__* rep; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int namelen; int name; } ;
struct TYPE_3__ {int flags; } ;


 int BIT_AA ;
 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_NSEC ;
 int az_add_additionals_from (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_rrset*,int ) ;
 int az_add_nsec3_proof (struct auth_zone*,struct regional*,struct dns_msg*,int ,int ,int ,int ,int,int,int ,int ) ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 int log_assert (struct auth_data*) ;
 int msg_add_rrset_ns (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_referral_answer(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, struct auth_data* ce, struct auth_rrset* rrset)
{
 struct auth_rrset* ds, *nsec;

 log_assert(ce);
 msg->rep->flags &= ~BIT_AA;
 if(!msg_add_rrset_ns(z, region, msg, ce, rrset)) return 0;

 if((ds=az_domain_rrset(ce, LDNS_RR_TYPE_DS))!=((void*)0)) {
  if(!msg_add_rrset_ns(z, region, msg, ce, ds)) return 0;
 } else {

  if((nsec=az_domain_rrset(ce, LDNS_RR_TYPE_NSEC))!=((void*)0)) {
   if(!msg_add_rrset_ns(z, region, msg, ce, nsec))
    return 0;
  } else {
   if(!az_add_nsec3_proof(z, region, msg, ce->name,
    ce->namelen, msg->qinfo.qname,
    msg->qinfo.qname_len, 1, 1, 0, 0))
    return 0;
  }
 }

 if(!az_add_additionals_from(z, region, msg, rrset, 0)) return 0;
 return 1;
}
