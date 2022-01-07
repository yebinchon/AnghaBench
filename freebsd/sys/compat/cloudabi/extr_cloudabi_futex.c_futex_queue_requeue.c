
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_waiter {struct futex_queue* fw_queue; } ;
struct futex_queue {int fq_count; int fq_list; } ;


 int STAILQ_EMPTY (int *) ;
 struct futex_waiter* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct futex_waiter*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int fw_next ;

__attribute__((used)) static void
futex_queue_requeue(struct futex_queue *fqfrom, struct futex_queue *fqto,
    unsigned int nwaiters)
{
 struct futex_waiter *fw;


 while (nwaiters-- > 0 && !STAILQ_EMPTY(&fqfrom->fq_list)) {
  fw = STAILQ_FIRST(&fqfrom->fq_list);
  STAILQ_REMOVE_HEAD(&fqfrom->fq_list, fw_next);
  --fqfrom->fq_count;

  fw->fw_queue = fqto;
  STAILQ_INSERT_TAIL(&fqto->fq_list, fw, fw_next);
  ++fqto->fq_count;
 }
}
