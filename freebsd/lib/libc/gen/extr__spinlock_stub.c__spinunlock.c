
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 size_t INTERPOS_spinunlock ;
 scalar_t__* __libc_interposing ;
 void stub1 (int *) ;

void
_spinunlock(spinlock_t *lck)
{

 ((void (*)(spinlock_t *lck))__libc_interposing[INTERPOS_spinunlock])
     (lck);

}
