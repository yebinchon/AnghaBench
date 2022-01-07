
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrtree {int size_bytes; int node_count; } ;
struct addrnode {int parent_index; struct addrnode* str; TYPE_1__* parent_node; struct addrnode** edge; struct addrnode* parent_edge; } ;
struct addredge {int parent_index; struct addredge* str; TYPE_1__* parent_node; struct addredge** edge; struct addredge* parent_edge; } ;
struct TYPE_2__ {struct addrnode** edge; } ;


 int clean_node (struct addrtree*,struct addrnode*) ;
 int free (struct addrnode*) ;
 int lru_pop (struct addrtree*,struct addrnode*) ;
 scalar_t__ node_size (struct addrtree*,struct addrnode*) ;

__attribute__((used)) static void
purge_node(struct addrtree *tree, struct addrnode *node)
{
 struct addredge *parent_edge, *child_edge = ((void*)0);
 int index;
 int keep = node->edge[0] && node->edge[1];

 clean_node(tree, node);
 parent_edge = node->parent_edge;
 if (keep || !parent_edge) return;
 tree->node_count--;
 index = parent_edge->parent_index;
 child_edge = node->edge[!node->edge[0]];
 if (child_edge) {
  child_edge->parent_node = parent_edge->parent_node;
  child_edge->parent_index = index;
 }
 parent_edge->parent_node->edge[index] = child_edge;
 tree->size_bytes -= node_size(tree, node);
 free(parent_edge->str);
 free(parent_edge);
 lru_pop(tree, node);
 free(node);
}
