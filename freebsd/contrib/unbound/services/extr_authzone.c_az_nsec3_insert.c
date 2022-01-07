
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;


 int LDNS_RR_TYPE_NSEC3 ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 int msg_add_rrset_ns (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_nsec3_insert(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, struct auth_data* node)
{
 struct auth_rrset* nsec3;
 if(!node) return 1;
 nsec3 = az_domain_rrset(node, LDNS_RR_TYPE_NSEC3);
 if(!nsec3) return 1;
 if(!msg_add_rrset_ns(z, region, msg, node, nsec3)) return 0;
 return 1;
}
