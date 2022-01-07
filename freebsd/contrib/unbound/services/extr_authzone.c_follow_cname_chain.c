
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; scalar_t__* rr_data; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int name; } ;
struct auth_rrset {struct packed_rrset_data* data; } ;
struct auth_data {int dummy; } ;


 int LDNS_RR_TYPE_CNAME ;
 int MAX_CNAME_CHAIN ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,scalar_t__,size_t) ;
 int dname_subdomain_c (scalar_t__,int ) ;
 size_t dname_valid (scalar_t__,int) ;
 int msg_add_rrset_an (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
follow_cname_chain(struct auth_zone* z, uint16_t qtype,
 struct regional* region, struct dns_msg* msg,
 struct packed_rrset_data* d)
{
 int maxchain = 0;

 while(maxchain++ < MAX_CNAME_CHAIN) {
  struct auth_data* node;
  struct auth_rrset* rrset;
  size_t clen;

  if(d->count == 0) break;
  if(d->rr_len[0] < 2+1) break;
  if((clen=dname_valid(d->rr_data[0]+2, d->rr_len[0]-2))==0)
   break;
  if(!dname_subdomain_c(d->rr_data[0]+2, z->name))
   break;
  if((node = az_find_name(z, d->rr_data[0]+2, clen))==((void*)0))
   break;
  if((rrset=az_domain_rrset(node, qtype))!=((void*)0)) {

   if(!msg_add_rrset_an(z, region, msg, node, rrset))
    return 0;
   break;
  }
  if((rrset=az_domain_rrset(node, LDNS_RR_TYPE_CNAME))==((void*)0))
   break;
  if(!msg_add_rrset_an(z, region, msg, node, rrset)) return 0;
  d = rrset->data;
 }
 return 1;
}
