
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct addrtree {struct addrnode* root; } ;
struct addrnode {scalar_t__ ttl; scalar_t__ scope; struct addredge** edge; scalar_t__ elem; } ;
struct addredge {scalar_t__ len; struct addrnode* node; int str; } ;
typedef scalar_t__ addrlen_t ;
typedef int addrkey_t ;


 size_t getbit (int const*,scalar_t__,scalar_t__) ;
 int issub (int ,scalar_t__,int const*,scalar_t__,scalar_t__) ;
 int log_assert (int) ;
 int lru_update (struct addrtree*,struct addrnode*) ;

struct addrnode *
addrtree_find(struct addrtree *tree, const addrkey_t *addr,
 addrlen_t sourcemask, time_t now)
{
 struct addrnode *node = tree->root;
 struct addredge *edge = ((void*)0);
 addrlen_t depth = 0;

 log_assert(node != ((void*)0));
 while (1) {

  log_assert(depth <= sourcemask);

  if (node->elem && node->ttl >= now) {
                             ;
   log_assert(node->scope >= depth);
   if (depth == node->scope ||
    (node->scope > sourcemask &&
     depth == sourcemask)) {



    lru_update(tree, node);
    return node;
   }
  }

  if (depth == sourcemask)
   return ((void*)0);

  edge = node->edge[getbit(addr, sourcemask, depth)];
  if (!edge || !edge->node)
   return ((void*)0);
  if (edge->len > sourcemask )
   return ((void*)0);
  if (!issub(edge->str, edge->len, addr, sourcemask, depth))
   return ((void*)0);
  log_assert(depth < edge->len);
  depth = edge->len;
  node = edge->node;
 }
}
