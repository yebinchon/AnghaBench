
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
typedef struct resp_addr const resp_addr ;
struct reply_info {size_t an_numrrsets; TYPE_3__** rrsets; } ;
struct rbtree_type {int dummy; } ;
struct packed_rrset_data {size_t count; } ;
typedef int socklen_t ;
struct TYPE_5__ {struct packed_rrset_data* data; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {TYPE_2__ entry; TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ addr_tree_lookup (struct rbtree_type*,struct sockaddr_storage*,int ) ;
 scalar_t__ ntohs (int ) ;
 int rdata2sockaddr (struct packed_rrset_data const*,scalar_t__,size_t,struct sockaddr_storage*,int *) ;

__attribute__((used)) static const struct resp_addr*
respip_addr_lookup(const struct reply_info *rep, struct rbtree_type* iptree,
 size_t* rrset_id)
{
 size_t i;
 struct resp_addr* ra;
 struct sockaddr_storage ss;
 socklen_t addrlen;

 for(i=0; i<rep->an_numrrsets; i++) {
  size_t j;
  const struct packed_rrset_data* rd;
  uint16_t rtype = ntohs(rep->rrsets[i]->rk.type);

  if(rtype != LDNS_RR_TYPE_A && rtype != LDNS_RR_TYPE_AAAA)
   continue;
  rd = rep->rrsets[i]->entry.data;
  for(j = 0; j < rd->count; j++) {
   if(!rdata2sockaddr(rd, rtype, j, &ss, &addrlen))
    continue;
   ra = (struct resp_addr*)addr_tree_lookup(iptree, &ss,
    addrlen);
   if(ra) {
    *rrset_id = i;
    return ra;
   }
  }
 }

 return ((void*)0);
}
