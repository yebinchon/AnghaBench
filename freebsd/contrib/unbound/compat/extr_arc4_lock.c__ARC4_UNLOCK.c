
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4lock ;
 int lock_quick_unlock (int *) ;

void _ARC4_UNLOCK(void)
{
 lock_quick_unlock(&arc4lock);
}
