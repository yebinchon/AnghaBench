
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int sq_freeq; int sq_blocked; } ;
struct pthread {int * wchan; struct sleepqueue* sleepqueue; } ;


 int LIST_REMOVE (struct sleepqueue*,int ) ;
 struct sleepqueue* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct pthread*,int ) ;
 int sq_flink ;
 int sq_hash ;
 int wle ;

int
_sleepq_remove(struct sleepqueue *sq, struct pthread *td)
{
 int rc;

 TAILQ_REMOVE(&sq->sq_blocked, td, wle);
 if (TAILQ_EMPTY(&sq->sq_blocked)) {
  LIST_REMOVE(sq, sq_hash);
  td->sleepqueue = sq;
  rc = 0;
 } else {
  td->sleepqueue = SLIST_FIRST(&sq->sq_freeq);
  SLIST_REMOVE_HEAD(&sq->sq_freeq, sq_flink);
  rc = 1;
 }
 td->wchan = ((void*)0);
 return (rc);
}
