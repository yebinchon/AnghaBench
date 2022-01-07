
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct module_env {scalar_t__* now; int rnd; } ;


 int autr_permit_small_holddown ;
 scalar_t__ ub_random_max (int ,long) ;

__attribute__((used)) static time_t
calc_next_probe(struct module_env* env, time_t wait)
{

 time_t rnd, rest;
 if(!autr_permit_small_holddown) {
  if(wait < 3600)
   wait = 3600;
 } else {
  if(wait == 0) wait = 1;
 }
 rnd = wait/10;
 rest = wait-rnd;
 rnd = (time_t)ub_random_max(env->rnd, (long int)rnd);
 return (time_t)(*env->now + rest + rnd);
}
