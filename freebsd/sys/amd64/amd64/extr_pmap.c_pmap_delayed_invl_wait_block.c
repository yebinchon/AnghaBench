
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct turnstile {int dummy; } ;


 int TS_SHARED_QUEUE ;
 scalar_t__ atomic_load_long (scalar_t__*) ;
 int invl_gen_ts ;
 int turnstile_cancel (struct turnstile*) ;
 struct turnstile* turnstile_trywait (int *) ;
 int turnstile_wait (struct turnstile*,int *,int ) ;

__attribute__((used)) static void
pmap_delayed_invl_wait_block(u_long *m_gen, u_long *invl_gen)
{
 struct turnstile *ts;

 ts = turnstile_trywait(&invl_gen_ts);
 if (*m_gen > atomic_load_long(invl_gen))
  turnstile_wait(ts, ((void*)0), TS_SHARED_QUEUE);
 else
  turnstile_cancel(ts);
}
