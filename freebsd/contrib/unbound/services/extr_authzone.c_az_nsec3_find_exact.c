
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_zone {int dummy; } ;
struct auth_data {int dummy; } ;
typedef int hname ;


 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,int *,size_t) ;
 int az_nsec3_hashname (struct auth_zone*,int *,size_t*,int *,size_t,int,size_t,int *,size_t) ;

__attribute__((used)) static struct auth_data*
az_nsec3_find_exact(struct auth_zone* z, uint8_t* nm, size_t nmlen,
 int algo, size_t iter, uint8_t* salt, size_t saltlen)
{
 struct auth_data* node;
 uint8_t hname[LDNS_MAX_DOMAINLEN];
 size_t hlen = sizeof(hname);
 if(!az_nsec3_hashname(z, hname, &hlen, nm, nmlen, algo, iter,
  salt, saltlen))
  return ((void*)0);
 node = az_find_name(z, hname, hlen);
 if(az_domain_rrset(node, LDNS_RR_TYPE_NSEC3))
  return node;
 return ((void*)0);
}
