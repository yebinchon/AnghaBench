
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifname; int qname; } ;
struct pf_altq_node {struct pf_altq_node* children; TYPE_1__ altq; struct pf_altq_node* next; } ;


 int strcmp (int ,char const*) ;

struct pf_altq_node *
pfctl_find_altq_node(struct pf_altq_node *root, const char *qname,
    const char *ifname)
{
 struct pf_altq_node *node, *child;

 for (node = root; node != ((void*)0); node = node->next) {
  if (!strcmp(node->altq.qname, qname)
      && !(strcmp(node->altq.ifname, ifname)))
   return (node);
  if (node->children != ((void*)0)) {
   child = pfctl_find_altq_node(node->children, qname,
       ifname);
   if (child != ((void*)0))
    return (child);
  }
 }
 return (((void*)0));
}
