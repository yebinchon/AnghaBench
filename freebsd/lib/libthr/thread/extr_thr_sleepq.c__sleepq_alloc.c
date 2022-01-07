
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int sq_freeq; int sq_blocked; } ;


 int SLIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 struct sleepqueue* calloc (int,int) ;

struct sleepqueue *
_sleepq_alloc(void)
{
 struct sleepqueue *sq;

 sq = calloc(1, sizeof(struct sleepqueue));
 TAILQ_INIT(&sq->sq_blocked);
 SLIST_INIT(&sq->sq_freeq);
 return (sq);
}
