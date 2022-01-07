
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_info {int qname; } ;
struct auth_zone {int data; } ;
struct auth_data {int name; int node; int * rrsets; } ;
typedef int rbnode_type ;


 int * RBTREE_NULL ;
 scalar_t__ dname_strict_subdomain_c (int ,int ) ;
 scalar_t__ rbtree_first (int *) ;
 scalar_t__ rbtree_next (int *) ;

__attribute__((used)) static int
az_empty_nonterminal(struct auth_zone* z, struct query_info* qinfo,
 struct auth_data* node)
{
 struct auth_data* next;
 if(!node) {


  next = (struct auth_data*)rbtree_first(&z->data);
 } else {
  next = (struct auth_data*)rbtree_next(&node->node);
 }
 while(next && (rbnode_type*)next != RBTREE_NULL && next->rrsets == ((void*)0)) {


  next = (struct auth_data*)rbtree_next(&node->node);
 }
 if((rbnode_type*)next == RBTREE_NULL || !next) {


  return 0;
 }


 if(dname_strict_subdomain_c(next->name, qinfo->qname))
  return 1;
 return 0;
}
