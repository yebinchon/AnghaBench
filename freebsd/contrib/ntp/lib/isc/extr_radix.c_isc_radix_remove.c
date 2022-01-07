
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* head; int num_active_node; int mctx; } ;
typedef TYPE_1__ isc_radix_tree_t ;
struct TYPE_7__ {struct TYPE_7__* l; struct TYPE_7__* r; int * prefix; struct TYPE_7__* parent; int ** data; } ;
typedef TYPE_2__ isc_radix_node_t ;


 int INSIST (int) ;
 int REQUIRE (int ) ;
 int _deref_prefix (int ,int *) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;

void
isc_radix_remove(isc_radix_tree_t *radix, isc_radix_node_t *node) {
 isc_radix_node_t *parent, *child;

 REQUIRE(radix != ((void*)0));
 REQUIRE(node != ((void*)0));

 if (node->r && node->l) {




  if (node->prefix != ((void*)0))
   _deref_prefix(radix->mctx, node->prefix);

  node->prefix = ((void*)0);
  node->data[0] = node->data[1] = ((void*)0);
  return;
 }

 if (node->r == ((void*)0) && node->l == ((void*)0)) {
  parent = node->parent;
  _deref_prefix(radix->mctx, node->prefix);
  isc_mem_put(radix->mctx, node, sizeof(*node));
  radix->num_active_node--;

  if (parent == ((void*)0)) {
   INSIST(radix->head == node);
   radix->head = ((void*)0);
   return;
  }

  if (parent->r == node) {
   parent->r = ((void*)0);
   child = parent->l;
  } else {
   INSIST(parent->l == node);
   parent->l = ((void*)0);
   child = parent->r;
  }

  if (parent->prefix)
   return;



  if (parent->parent == ((void*)0)) {
   INSIST(radix->head == parent);
   radix->head = child;
  } else if (parent->parent->r == parent) {
   parent->parent->r = child;
  } else {
   INSIST(parent->parent->l == parent);
   parent->parent->l = child;
  }
  child->parent = parent->parent;
  isc_mem_put(radix->mctx, parent, sizeof(*parent));
  radix->num_active_node--;
  return;
 }

 if (node->r) {
  child = node->r;
 } else {
  INSIST(node->l != ((void*)0));
  child = node->l;
 }
 parent = node->parent;
 child->parent = parent;

 _deref_prefix(radix->mctx, node->prefix);
 isc_mem_put(radix->mctx, node, sizeof(*node));
 radix->num_active_node--;

 if (parent == ((void*)0)) {
  INSIST(radix->head == node);
  radix->head = child;
  return;
 }

 if (parent->r == node) {
  parent->r = child;
 } else {
  INSIST(parent->l == node);
  parent->l = child;
 }
}
