
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTHREAD_SETUP_GLOBAL_LOCK (int ,int ) ;
 int arc4rand_lock ;

int
evutil_secure_rng_global_setup_locks_(const int enable_locks)
{
 EVTHREAD_SETUP_GLOBAL_LOCK(arc4rand_lock, 0);
 return 0;
}
