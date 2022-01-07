
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_hooks_t ;


 int extent_destroy_default_impl (void*,size_t) ;

__attribute__((used)) static void
extent_destroy_default(extent_hooks_t *extent_hooks, void *addr, size_t size,
    bool committed, unsigned arena_ind) {
 extent_destroy_default_impl(addr, size);
}
