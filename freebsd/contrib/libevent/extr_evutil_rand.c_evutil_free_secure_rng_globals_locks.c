
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTHREAD_FREE_LOCK (int *,int ) ;
 int * arc4rand_lock ;

__attribute__((used)) static void
evutil_free_secure_rng_globals_locks(void)
{

 if (arc4rand_lock != ((void*)0)) {
  EVTHREAD_FREE_LOCK(arc4rand_lock, 0);
  arc4rand_lock = ((void*)0);
 }

 return;
}
