
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct addrtree {int node_count; } ;
struct addrnode {int * prev; int * next; int * parent_edge; int ** edge; int ttl; int scope; void* elem; } ;
typedef int addrlen_t ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static struct addrnode *
node_create(struct addrtree *tree, void *elem, addrlen_t scope,
 time_t ttl)
{
 struct addrnode* node = (struct addrnode *)malloc( sizeof (*node) );
 if (!node)
  return ((void*)0);
 node->elem = elem;
 tree->node_count++;
 node->scope = scope;
 node->ttl = ttl;
 node->edge[0] = ((void*)0);
 node->edge[1] = ((void*)0);
 node->parent_edge = ((void*)0);
 node->next = ((void*)0);
 node->prev = ((void*)0);
 return node;
}
