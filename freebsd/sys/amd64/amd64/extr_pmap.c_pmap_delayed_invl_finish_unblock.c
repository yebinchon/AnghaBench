
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct turnstile {int dummy; } ;


 int TS_SHARED_QUEUE ;
 int invl_gen_ts ;
 scalar_t__ pmap_invl_gen ;
 int turnstile_broadcast (struct turnstile*,int ) ;
 int turnstile_chain_lock (int *) ;
 int turnstile_chain_unlock (int *) ;
 struct turnstile* turnstile_lookup (int *) ;
 int turnstile_unpend (struct turnstile*) ;

__attribute__((used)) static void
pmap_delayed_invl_finish_unblock(u_long new_gen)
{
 struct turnstile *ts;

 turnstile_chain_lock(&invl_gen_ts);
 ts = turnstile_lookup(&invl_gen_ts);
 if (new_gen != 0)
  pmap_invl_gen = new_gen;
 if (ts != ((void*)0)) {
  turnstile_broadcast(ts, TS_SHARED_QUEUE);
  turnstile_unpend(ts);
 }
 turnstile_chain_unlock(&invl_gen_ts);
}
