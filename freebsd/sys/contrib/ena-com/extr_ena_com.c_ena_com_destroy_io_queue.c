
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ena_com_io_sq {int dummy; } ;
struct ena_com_io_cq {int dummy; } ;
struct ena_com_dev {struct ena_com_io_cq* io_cq_queues; struct ena_com_io_sq* io_sq_queues; } ;


 size_t ENA_TOTAL_NUM_QUEUES ;
 int ena_com_destroy_io_cq (struct ena_com_dev*,struct ena_com_io_cq*) ;
 int ena_com_destroy_io_sq (struct ena_com_dev*,struct ena_com_io_sq*) ;
 int ena_com_io_queue_free (struct ena_com_dev*,struct ena_com_io_sq*,struct ena_com_io_cq*) ;
 int ena_trc_err (char*,size_t,size_t) ;

void ena_com_destroy_io_queue(struct ena_com_dev *ena_dev, u16 qid)
{
 struct ena_com_io_sq *io_sq;
 struct ena_com_io_cq *io_cq;

 if (qid >= ENA_TOTAL_NUM_QUEUES) {
  ena_trc_err("Qid (%d) is bigger than max num of queues (%d)\n",
       qid, ENA_TOTAL_NUM_QUEUES);
  return;
 }

 io_sq = &ena_dev->io_sq_queues[qid];
 io_cq = &ena_dev->io_cq_queues[qid];

 ena_com_destroy_io_sq(ena_dev, io_sq);
 ena_com_destroy_io_cq(ena_dev, io_cq);

 ena_com_io_queue_free(ena_dev, io_sq, io_cq);
}
