
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int extent_hooks_t ;
struct TYPE_4__ {int extent_hooks; } ;
typedef TYPE_1__ base_t ;


 int ATOMIC_RELEASE ;
 int atomic_store_p (int *,int *,int ) ;
 int * base_extent_hooks_get (TYPE_1__*) ;

extent_hooks_t *
base_extent_hooks_set(base_t *base, extent_hooks_t *extent_hooks) {
 extent_hooks_t *old_extent_hooks = base_extent_hooks_get(base);
 atomic_store_p(&base->extent_hooks, extent_hooks, ATOMIC_RELEASE);
 return old_extent_hooks;
}
