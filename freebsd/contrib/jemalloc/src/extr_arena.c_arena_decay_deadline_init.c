
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nstime_t ;
struct TYPE_4__ {int deadline; int interval; int jitter_state; int epoch; } ;
typedef TYPE_1__ arena_decay_t ;


 scalar_t__ arena_decay_ms_read (TYPE_1__*) ;
 int nstime_add (int *,int *) ;
 int nstime_copy (int *,int *) ;
 int nstime_init (int *,int ) ;
 int nstime_ns (int *) ;
 int prng_range_u64 (int *,int ) ;

__attribute__((used)) static void
arena_decay_deadline_init(arena_decay_t *decay) {




 nstime_copy(&decay->deadline, &decay->epoch);
 nstime_add(&decay->deadline, &decay->interval);
 if (arena_decay_ms_read(decay) > 0) {
  nstime_t jitter;

  nstime_init(&jitter, prng_range_u64(&decay->jitter_state,
      nstime_ns(&decay->interval)));
  nstime_add(&decay->deadline, &jitter);
 }
}
