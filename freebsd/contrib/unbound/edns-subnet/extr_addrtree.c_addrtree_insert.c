
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct addrtree {scalar_t__ max_depth; int size_bytes; int node_count; scalar_t__ (* sizefunc ) (void*) ;struct addrnode* root; } ;
struct addrnode {scalar_t__ ttl; scalar_t__ scope; void* elem; struct addredge** edge; } ;
struct addredge {scalar_t__ len; int parent_index; struct addrnode* parent_node; int const* str; struct addrnode* node; } ;
typedef scalar_t__ addrlen_t ;
typedef int addrkey_t ;


 scalar_t__ bits_common (int const*,scalar_t__,int const*,scalar_t__,scalar_t__) ;
 int clean_node (struct addrtree*,struct addrnode*) ;
 int edge_create (struct addrnode*,int const*,scalar_t__,struct addrnode*,int) ;
 int free (struct addrnode*) ;
 int getbit (int const*,scalar_t__,scalar_t__) ;
 int log_assert (int) ;
 int lru_cleanup (struct addrtree*) ;
 int lru_push (struct addrtree*,struct addrnode*) ;
 struct addrnode* node_create (struct addrtree*,void*,scalar_t__,scalar_t__) ;
 scalar_t__ node_size (struct addrtree*,struct addrnode*) ;
 int purge_node (struct addrtree*,struct addrnode*) ;
 scalar_t__ stub1 (void*) ;

void
addrtree_insert(struct addrtree *tree, const addrkey_t *addr,
 addrlen_t sourcemask, addrlen_t scope, void *elem, time_t ttl,
 time_t now)
{
 struct addrnode *newnode, *node;
 struct addredge *edge;
 int index;
 addrlen_t common, depth;

 node = tree->root;
 log_assert(node != ((void*)0));


 if (tree->max_depth < scope) scope = tree->max_depth;

 if (scope < sourcemask) sourcemask = scope;

 depth = 0;
 while (1) {
  log_assert(depth <= sourcemask);

  if (depth == sourcemask) {

   clean_node(tree, node);
   node->ttl = ttl;
   node->elem = elem;
   node->scope = scope;
   tree->size_bytes += tree->sizefunc(elem);
   return;
  }
  index = getbit(addr, sourcemask, depth);

  edge = node->edge[index];
  while (edge) {

   if (!edge->node->elem || edge->node->ttl >= now)
    break;
   purge_node(tree, edge->node);
   edge = node->edge[index];
  }

  if (!edge) {
   newnode = node_create(tree, elem, scope, ttl);
   if (!newnode) return;
   if (!edge_create(newnode, addr, sourcemask, node,
    index)) {
    clean_node(tree, newnode);
    tree->node_count--;
    free(newnode);
    return;
   }
   tree->size_bytes += node_size(tree, newnode);
   lru_push(tree, newnode);
   lru_cleanup(tree);
   return;
  }

  common = bits_common(edge->str, edge->len, addr, sourcemask,
   depth);
  if (common == edge->len) {



   node->scope = scope;
   depth = edge->len;
   node = edge->node;
   continue;
  }

  if (!(newnode = node_create(tree, ((void*)0), 0, 0)))
   return;
  node->edge[index] = ((void*)0);
  if (!edge_create(newnode, addr, common, node, index)) {
   node->edge[index] = edge;
   clean_node(tree, newnode);
   tree->node_count--;
   free(newnode);
   return;
  }
  lru_push(tree, newnode);

  index = getbit(edge->str, edge->len, common);
  newnode->edge[index] = edge;
  edge->parent_node = newnode;
  edge->parent_index = (int)index;

  if (common == sourcemask) {

   newnode->elem = elem;
   newnode->scope = scope;
   newnode->ttl = ttl;
  }

  tree->size_bytes += node_size(tree, newnode);

  if (common != sourcemask) {

   node = newnode;
   newnode = node_create(tree, elem, scope, ttl);
   if (!edge_create(newnode, addr, sourcemask, node,
    index^1)) {
    clean_node(tree, newnode);
    tree->node_count--;
    free(newnode);
    return;
   }
   tree->size_bytes += node_size(tree, newnode);
   lru_push(tree, newnode);
  }
  lru_cleanup(tree);
  return;
 }
}
