
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {scalar_t__ sw_in_use; scalar_t__ size; int error; scalar_t__ sw_pidx; int cqid; } ;


 int LOG_NOTICE ;
 int assert (int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static inline void t4_swcq_produce(struct t4_cq *cq)
{
 cq->sw_in_use++;
 if (cq->sw_in_use == cq->size) {
  syslog(LOG_NOTICE, "cxgb4 sw cq overflow cqid %u\n", cq->cqid);
  cq->error = 1;
  assert(0);
 }
 if (++cq->sw_pidx == cq->size)
  cq->sw_pidx = 0;
}
