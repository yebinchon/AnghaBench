
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cqe {int dummy; } ;
struct t4_cq {scalar_t__ sw_in_use; scalar_t__ size; int error; size_t sw_cidx; struct t4_cqe* sw_queue; int cqid; } ;


 int LOG_NOTICE ;
 int assert (int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static inline struct t4_cqe *t4_next_sw_cqe(struct t4_cq *cq)
{
 if (cq->sw_in_use == cq->size) {
  syslog(LOG_NOTICE, "cxgb4 sw cq overflow cqid %u\n", cq->cqid);
  cq->error = 1;
  assert(0);
  return ((void*)0);
 }
 if (cq->sw_in_use)
  return &cq->sw_queue[cq->sw_cidx];
 return ((void*)0);
}
