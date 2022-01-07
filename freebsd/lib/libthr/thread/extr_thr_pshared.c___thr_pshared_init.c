
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_SIZE ;
 int LIST_INIT (int *) ;
 int _thr_urwlock_init (int *) ;
 int * pshared_hash ;
 int pshared_lock ;

void
__thr_pshared_init(void)
{
 int i;

 _thr_urwlock_init(&pshared_lock);
 for (i = 0; i < HASH_SIZE; i++)
  LIST_INIT(&pshared_hash[i]);
}
