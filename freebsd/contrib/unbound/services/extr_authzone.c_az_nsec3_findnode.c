
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct query_info {size_t qname_len; int * qname; scalar_t__ qtype; scalar_t__ qclass; } ;
struct auth_zone {int dummy; } ;
struct auth_data {int node; } ;
typedef int rbnode_type ;


 int LDNS_RR_TYPE_NSEC3 ;
 int * RBTREE_NULL ;
 int az_domain_rrset (struct auth_data*,int ) ;
 int az_find_domain (struct auth_zone*,struct query_info*,int*,struct auth_data**) ;
 scalar_t__ rbtree_previous (int *) ;

__attribute__((used)) static struct auth_data*
az_nsec3_findnode(struct auth_zone* z, uint8_t* hashnm, size_t hashnmlen)
{
 struct query_info qinfo;
 struct auth_data* node;
 int node_exact;
 qinfo.qclass = 0;
 qinfo.qtype = 0;
 qinfo.qname = hashnm;
 qinfo.qname_len = hashnmlen;


 az_find_domain(z, &qinfo, &node_exact, &node);



 while(node && (rbnode_type*)node != RBTREE_NULL &&
  !az_domain_rrset(node, LDNS_RR_TYPE_NSEC3)) {
  node = (struct auth_data*)rbtree_previous(&node->node);
 }
 if((rbnode_type*)node == RBTREE_NULL)
  node = ((void*)0);
 return node;
}
