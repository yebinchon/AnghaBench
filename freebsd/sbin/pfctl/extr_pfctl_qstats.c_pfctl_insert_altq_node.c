
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_stats {int * parent; int ifname; } ;
struct pf_altq_node {struct pf_altq_node* next; struct pf_altq_node* children; int qstats; int altq; } ;
struct pf_altq {int * parent; int ifname; } ;
typedef int qstats ;


 struct pf_altq_node* calloc (int,int) ;
 int err (int,char*) ;
 int errx (int,char*,int *) ;
 int memcpy (int *,struct queue_stats const*,int) ;
 struct pf_altq_node* pfctl_find_altq_node (struct pf_altq_node*,int *,int ) ;
 int update_avg (struct pf_altq_node*) ;

void
pfctl_insert_altq_node(struct pf_altq_node **root,
    const struct pf_altq altq, const struct queue_stats qstats)
{
 struct pf_altq_node *node;

 node = calloc(1, sizeof(struct pf_altq_node));
 if (node == ((void*)0))
  err(1, "pfctl_insert_altq_node: calloc");
 memcpy(&node->altq, &altq, sizeof(struct pf_altq));
 memcpy(&node->qstats, &qstats, sizeof(qstats));
 node->next = node->children = ((void*)0);

 if (*root == ((void*)0))
  *root = node;
 else if (!altq.parent[0]) {
  struct pf_altq_node *prev = *root;

  while (prev->next != ((void*)0))
   prev = prev->next;
  prev->next = node;
 } else {
  struct pf_altq_node *parent;

  parent = pfctl_find_altq_node(*root, altq.parent, altq.ifname);
  if (parent == ((void*)0))
   errx(1, "parent %s not found", altq.parent);
  if (parent->children == ((void*)0))
   parent->children = node;
  else {
   struct pf_altq_node *prev = parent->children;

   while (prev->next != ((void*)0))
    prev = prev->next;
   prev->next = node;
  }
 }
 update_avg(node);
}
