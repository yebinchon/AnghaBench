
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC4_LOCK_ () ;
 int ARC4_UNLOCK_ () ;
 scalar_t__ arc4_seeded_ok ;
 int arc4_stir () ;

int
evutil_secure_rng_init(void)
{
 int val;

 ARC4_LOCK_();
 if (!arc4_seeded_ok)
  arc4_stir();
 val = arc4_seeded_ok ? 0 : -1;
 ARC4_UNLOCK_();
 return val;
}
