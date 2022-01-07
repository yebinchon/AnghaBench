
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue_chain {int sc_enqcnt; int sc_queues; } ;
struct sleepqueue {int sq_blocked; void* sq_wchan; int sq_freeq; } ;
struct pthread {void* wchan; struct sleepqueue* sleepqueue; } ;


 int LIST_INSERT_HEAD (int *,struct sleepqueue*,int ) ;
 struct sleepqueue_chain* SC_LOOKUP (void*) ;
 int SLIST_INSERT_HEAD (int *,struct sleepqueue*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct pthread*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pthread*,int ) ;
 int _thr_queuefifo ;
 struct sleepqueue* lookup (struct sleepqueue_chain*,void*) ;
 int sq_flink ;
 int sq_hash ;
 int wle ;

void
_sleepq_add(void *wchan, struct pthread *td)
{
 struct sleepqueue_chain *sc;
 struct sleepqueue *sq;

 sc = SC_LOOKUP(wchan);
 sq = lookup(sc, wchan);
 if (sq != ((void*)0)) {
  SLIST_INSERT_HEAD(&sq->sq_freeq, td->sleepqueue, sq_flink);
 } else {
  sq = td->sleepqueue;
  LIST_INSERT_HEAD(&sc->sc_queues, sq, sq_hash);
  sq->sq_wchan = wchan;

 }
 td->sleepqueue = ((void*)0);
 td->wchan = wchan;
 if (((++sc->sc_enqcnt << _thr_queuefifo) & 0xff) != 0)
  TAILQ_INSERT_HEAD(&sq->sq_blocked, td, wle);
 else
  TAILQ_INSERT_TAIL(&sq->sq_blocked, td, wle);
}
