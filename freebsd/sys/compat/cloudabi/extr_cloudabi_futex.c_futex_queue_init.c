
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_queue {scalar_t__ fq_count; int fq_list; } ;


 int STAILQ_INIT (int *) ;

__attribute__((used)) static void
futex_queue_init(struct futex_queue *fq)
{

 STAILQ_INIT(&fq->fq_list);
 fq->fq_count = 0;
}
