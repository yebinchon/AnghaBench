
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4lock ;
 int arc4lockinit ;
 int lock_quick_init (int *) ;
 int lock_quick_lock (int *) ;

void _ARC4_LOCK(void)
{
 if(!arc4lockinit) {
  arc4lockinit = 1;
  lock_quick_init(&arc4lock);
 }
 lock_quick_lock(&arc4lock);
}
