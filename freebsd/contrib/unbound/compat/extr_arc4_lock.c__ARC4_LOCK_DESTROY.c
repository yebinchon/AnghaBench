
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4lock ;
 scalar_t__ arc4lockinit ;
 int lock_quick_destroy (int *) ;

void _ARC4_LOCK_DESTROY(void)
{
 if(arc4lockinit) {
  arc4lockinit = 0;
  lock_quick_destroy(&arc4lock);
 }
}
