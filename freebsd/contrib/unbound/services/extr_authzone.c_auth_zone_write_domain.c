
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zone {scalar_t__ namelen; } ;
struct auth_rrset {scalar_t__ type; struct auth_rrset* next; } ;
struct auth_data {scalar_t__ namelen; struct auth_rrset* rrsets; } ;
typedef int FILE ;


 scalar_t__ LDNS_RR_TYPE_SOA ;
 int auth_zone_write_rrset (struct auth_zone*,struct auth_data*,struct auth_rrset*,int *) ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,scalar_t__) ;

__attribute__((used)) static int
auth_zone_write_domain(struct auth_zone* z, struct auth_data* n, FILE* out)
{
 struct auth_rrset* r;

 if(z->namelen == n->namelen) {
  struct auth_rrset* soa = az_domain_rrset(n, LDNS_RR_TYPE_SOA);
  if(soa) {
   if(!auth_zone_write_rrset(z, n, soa, out))
    return 0;
  }
 }

 for(r = n->rrsets; r; r = r->next) {
  if(z->namelen == n->namelen &&
   r->type == LDNS_RR_TYPE_SOA)
   continue;
  if(!auth_zone_write_rrset(z, n, r, out))
   return 0;
 }
 return 1;
}
