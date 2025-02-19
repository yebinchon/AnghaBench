
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef int arena_stats_decay_t ;
struct TYPE_4__ {int purging; int * stats; int mtx; scalar_t__ ceil_npages; } ;
typedef TYPE_1__ arena_decay_t ;


 int WITNESS_RANK_DECAY ;
 int arena_decay_reinit (TYPE_1__*,int ) ;
 int assert (int) ;
 scalar_t__ config_debug ;
 scalar_t__ config_stats ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;

__attribute__((used)) static bool
arena_decay_init(arena_decay_t *decay, ssize_t decay_ms,
    arena_stats_decay_t *stats) {
 if (config_debug) {
  for (size_t i = 0; i < sizeof(arena_decay_t); i++) {
   assert(((char *)decay)[i] == 0);
  }
  decay->ceil_npages = 0;
 }
 if (malloc_mutex_init(&decay->mtx, "decay", WITNESS_RANK_DECAY,
     malloc_mutex_rank_exclusive)) {
  return 1;
 }
 decay->purging = 0;
 arena_decay_reinit(decay, decay_ms);

 if (config_stats) {
  decay->stats = stats;
 }
 return 0;
}
