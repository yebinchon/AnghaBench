
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {unsigned int arena_ind; int * astats; } ;
typedef TYPE_1__ ctl_arena_t ;
typedef int ctl_arena_stats_t ;
struct TYPE_5__ {TYPE_1__** arenas; } ;


 int QUANTUM ;
 scalar_t__ arenas_i2a (size_t) ;
 size_t arenas_i2a_impl (size_t,int,int) ;
 int assert (int) ;
 int b0get () ;
 scalar_t__ base_alloc (int ,int ,int,int ) ;
 scalar_t__ config_stats ;
 TYPE_2__* ctl_arenas ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static ctl_arena_t *
arenas_i_impl(tsd_t *tsd, size_t i, bool compat, bool init) {
 ctl_arena_t *ret;

 assert(!compat || !init);

 ret = ctl_arenas->arenas[arenas_i2a_impl(i, compat, 0)];
 if (init && ret == ((void*)0)) {
  if (config_stats) {
   struct container_s {
    ctl_arena_t ctl_arena;
    ctl_arena_stats_t astats;
   };
   struct container_s *cont =
       (struct container_s *)base_alloc(tsd_tsdn(tsd),
       b0get(), sizeof(struct container_s), QUANTUM);
   if (cont == ((void*)0)) {
    return ((void*)0);
   }
   ret = &cont->ctl_arena;
   ret->astats = &cont->astats;
  } else {
   ret = (ctl_arena_t *)base_alloc(tsd_tsdn(tsd), b0get(),
       sizeof(ctl_arena_t), QUANTUM);
   if (ret == ((void*)0)) {
    return ((void*)0);
   }
  }
  ret->arena_ind = (unsigned)i;
  ctl_arenas->arenas[arenas_i2a_impl(i, compat, 0)] = ret;
 }

 assert(ret == ((void*)0) || arenas_i2a(ret->arena_ind) == arenas_i2a(i));
 return ret;
}
