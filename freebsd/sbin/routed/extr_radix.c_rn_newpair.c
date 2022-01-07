
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {int rn_b; int rn_bmask; int rn_off; struct radix_node* rn_ybro; struct radix_node* rn_twin; scalar_t__ rn_info; int rn_flags; struct radix_node* rn_p; scalar_t__ rn_key; struct radix_node* rn_l; } ;
typedef scalar_t__ caddr_t ;


 int RNF_ACTIVE ;
 struct radix_node* rn_clist ;
 int rn_nodenum ;

__attribute__((used)) static struct radix_node *
rn_newpair(void *v, int b, struct radix_node nodes[2])
{
 struct radix_node *tt = nodes, *t = tt + 1;
 t->rn_b = b; t->rn_bmask = 0x80 >> (b & 7);
 t->rn_l = tt; t->rn_off = b >> 3;
 tt->rn_b = -1; tt->rn_key = (caddr_t)v; tt->rn_p = t;
 tt->rn_flags = t->rn_flags = RNF_ACTIVE;




 return t;
}
