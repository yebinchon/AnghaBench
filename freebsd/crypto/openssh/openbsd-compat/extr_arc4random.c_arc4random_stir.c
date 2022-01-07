
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ARC4_LOCK () ;
 int _ARC4_UNLOCK () ;
 int _rs_stir () ;

void
arc4random_stir(void)
{
 _ARC4_LOCK();
 _rs_stir();
 _ARC4_UNLOCK();
}
