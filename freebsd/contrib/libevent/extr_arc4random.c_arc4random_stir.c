
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC4_LOCK_ () ;
 int ARC4_UNLOCK_ () ;
 int arc4_stir () ;

int
arc4random_stir(void)
{
 int val;
 ARC4_LOCK_();
 val = arc4_stir();
 ARC4_UNLOCK_();
 return val;
}
