
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {struct radix_node* rnh_treetop; int rnh_walktree; int rnh_lookup; int rnh_matchaddr; int rnh_deladdr; int rnh_addaddr; struct radix_node* rnh_nodes; } ;
struct radix_node {int rn_flags; int rn_b; int rn_key; struct radix_node* rn_l; struct radix_node* rn_p; struct radix_node* rn_r; } ;


 int Bzero (struct radix_node_head*,int) ;
 int RNF_ACTIVE ;
 int RNF_ROOT ;
 int rn_addroute ;
 int rn_delete ;
 int rn_lookup ;
 int rn_match ;
 struct radix_node* rn_newpair (int ,int,struct radix_node*) ;
 int rn_ones ;
 int rn_walktree ;
 int rn_zeros ;
 scalar_t__ rtmalloc (int,char*) ;

int
rn_inithead(struct radix_node_head **head, int off)
{
 struct radix_node_head *rnh;
 struct radix_node *t, *tt, *ttt;
 if (*head)
  return (1);
 rnh = (struct radix_node_head *)rtmalloc(sizeof(*rnh), "rn_inithead");
 Bzero(rnh, sizeof (*rnh));
 *head = rnh;
 t = rn_newpair(rn_zeros, off, rnh->rnh_nodes);
 ttt = rnh->rnh_nodes + 2;
 t->rn_r = ttt;
 t->rn_p = t;
 tt = t->rn_l;
 tt->rn_flags = t->rn_flags = RNF_ROOT | RNF_ACTIVE;
 tt->rn_b = -1 - off;
 *ttt = *tt;
 ttt->rn_key = rn_ones;
 rnh->rnh_addaddr = rn_addroute;
 rnh->rnh_deladdr = rn_delete;
 rnh->rnh_matchaddr = rn_match;
 rnh->rnh_lookup = rn_lookup;
 rnh->rnh_walktree = rn_walktree;
 rnh->rnh_treetop = t;
 return (1);
}
