
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ena_rss {int tbl_log_size; size_t* host_rss_ind_tbl; TYPE_1__* rss_ind_tbl; } ;
struct ena_com_io_sq {scalar_t__ direction; int idx; } ;
struct ena_com_dev {struct ena_com_io_sq* io_sq_queues; struct ena_rss rss; } ;
struct TYPE_2__ {int cq_idx; } ;


 int ENA_COM_INVAL ;
 scalar_t__ ENA_COM_IO_QUEUE_DIRECTION_RX ;
 size_t ENA_TOTAL_NUM_QUEUES ;

__attribute__((used)) static int ena_com_ind_tbl_convert_to_device(struct ena_com_dev *ena_dev)
{
 struct ena_rss *rss = &ena_dev->rss;
 struct ena_com_io_sq *io_sq;
 u16 qid;
 int i;

 for (i = 0; i < 1 << rss->tbl_log_size; i++) {
  qid = rss->host_rss_ind_tbl[i];
  if (qid >= ENA_TOTAL_NUM_QUEUES)
   return ENA_COM_INVAL;

  io_sq = &ena_dev->io_sq_queues[qid];

  if (io_sq->direction != ENA_COM_IO_QUEUE_DIRECTION_RX)
   return ENA_COM_INVAL;

  rss->rss_ind_tbl[i].cq_idx = io_sq->idx;
 }

 return 0;
}
