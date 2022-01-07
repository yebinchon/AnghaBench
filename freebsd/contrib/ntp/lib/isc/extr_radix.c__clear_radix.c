
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_active_node; int mctx; TYPE_2__* head; } ;
typedef TYPE_1__ isc_radix_tree_t ;
struct TYPE_6__ {int ** data; int * prefix; struct TYPE_6__* r; struct TYPE_6__* l; } ;
typedef TYPE_2__ isc_radix_node_t ;
typedef int (* isc_radix_destroyfunc_t ) (int **) ;


 int INSIST (int) ;
 int RADIX_MAXBITS ;
 int REQUIRE (int ) ;
 int RUNTIME_CHECK (int) ;
 int _deref_prefix (int ,int *) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;

__attribute__((used)) static void
_clear_radix(isc_radix_tree_t *radix, isc_radix_destroyfunc_t func) {

 REQUIRE(radix != ((void*)0));

 if (radix->head != ((void*)0)) {

  isc_radix_node_t *Xstack[RADIX_MAXBITS+1];
  isc_radix_node_t **Xsp = Xstack;
  isc_radix_node_t *Xrn = radix->head;

  while (Xrn != ((void*)0)) {
   isc_radix_node_t *l = Xrn->l;
   isc_radix_node_t *r = Xrn->r;

   if (Xrn->prefix != ((void*)0)) {
    _deref_prefix(radix->mctx, Xrn->prefix);
    if (func != ((void*)0) && (Xrn->data[0] != ((void*)0) ||
           Xrn->data[1] != ((void*)0)))
     func(Xrn->data);
   } else {
    INSIST(Xrn->data[0] == ((void*)0) &&
           Xrn->data[1] == ((void*)0));
   }

   isc_mem_put(radix->mctx, Xrn, sizeof(*Xrn));
   radix->num_active_node--;

   if (l != ((void*)0)) {
    if (r != ((void*)0)) {
     *Xsp++ = r;
    }
    Xrn = l;
   } else if (r != ((void*)0)) {
    Xrn = r;
   } else if (Xsp != Xstack) {
    Xrn = *(--Xsp);
   } else {
    Xrn = ((void*)0);
   }
  }
 }
 RUNTIME_CHECK(radix->num_active_node == 0);
}
