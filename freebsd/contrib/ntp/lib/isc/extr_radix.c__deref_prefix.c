
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; } ;
typedef TYPE_1__ isc_prefix_t ;
typedef int isc_mem_t ;


 int isc_mem_put (int *,TYPE_1__*,int) ;
 int isc_refcount_decrement (int *,int*) ;
 int isc_refcount_destroy (int *) ;

__attribute__((used)) static void
_deref_prefix(isc_mem_t *mctx, isc_prefix_t *prefix) {
 int refs;

 if (prefix == ((void*)0))
  return;

 isc_refcount_decrement(&prefix->refcount, &refs);

 if (refs <= 0) {
  isc_refcount_destroy(&prefix->refcount);
  isc_mem_put(mctx, prefix, sizeof(isc_prefix_t));
 }
}
