
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* qname; int qid; char* ifname; scalar_t__ ifbandwidth; } ;
struct pf_altq_node {struct pf_altq_node* next; struct pf_altq_node* children; TYPE_1__ altq; } ;


 int PF_OPT_DEBUG ;
 int PF_OPT_VERBOSE ;
 int pfctl_print_altq_nodestat (int,struct pf_altq_node const*) ;
 int print_altq (TYPE_1__*,unsigned int,int *,int *) ;
 int printf (char*,...) ;
 char* rate2str (double) ;

void
pfctl_print_altq_node(int dev, const struct pf_altq_node *node,
    unsigned int level, int opts)
{
 const struct pf_altq_node *child;

 if (node == ((void*)0))
  return;

 print_altq(&node->altq, level, ((void*)0), ((void*)0));

 if (node->children != ((void*)0)) {
  printf("{");
  for (child = node->children; child != ((void*)0);
      child = child->next) {
   printf("%s", child->altq.qname);
   if (child->next != ((void*)0))
    printf(", ");
  }
  printf("}");
 }
 printf("\n");

 if (opts & PF_OPT_VERBOSE)
  pfctl_print_altq_nodestat(dev, node);

 if (opts & PF_OPT_DEBUG)
  printf("  [ qid=%u ifname=%s ifbandwidth=%s ]\n",
      node->altq.qid, node->altq.ifname,
      rate2str((double)(node->altq.ifbandwidth)));

 for (child = node->children; child != ((void*)0);
     child = child->next)
  pfctl_print_altq_node(dev, child, level + 1, opts);
}
