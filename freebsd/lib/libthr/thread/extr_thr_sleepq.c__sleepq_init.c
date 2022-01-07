
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_lock; int sc_queues; } ;


 int HASHSIZE ;
 int LIST_INIT (int *) ;
 int _thr_umutex_init (int *) ;
 TYPE_1__* sc_table ;

void
_sleepq_init(void)
{
 int i;

 for (i = 0; i < HASHSIZE; ++i) {
  LIST_INIT(&sc_table[i].sc_queues);
  _thr_umutex_init(&sc_table[i].sc_lock);
 }
}
