
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue_chain {int sc_lock; } ;
struct pthread {int dummy; } ;


 struct sleepqueue_chain* SC_LOOKUP (void*) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 struct pthread* _get_curthread () ;

void
_sleepq_unlock(void *wchan)
{
 struct sleepqueue_chain *sc;
 struct pthread *curthread = _get_curthread();

 sc = SC_LOOKUP(wchan);
 THR_LOCK_RELEASE(curthread, &sc->sc_lock);
}
