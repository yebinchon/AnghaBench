
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int max_entries_in_tx_burst; } ;
struct ena_com_io_sq {int entries_in_tx_burst_left; int qid; int db_addr; int bus; TYPE_1__ llq_info; int tail; } ;


 int ENA_REG_WRITE32 (int ,int ,int ) ;
 int ena_trc_dbg (char*,int ,int ) ;
 scalar_t__ is_llq_max_tx_burst_exists (struct ena_com_io_sq*) ;

__attribute__((used)) static inline int ena_com_write_sq_doorbell(struct ena_com_io_sq *io_sq)
{
 u16 tail = io_sq->tail;
 u16 max_entries_in_tx_burst = io_sq->llq_info.max_entries_in_tx_burst;

 ena_trc_dbg("write submission queue doorbell for queue: %d tail: %d\n",
      io_sq->qid, tail);

 ENA_REG_WRITE32(io_sq->bus, tail, io_sq->db_addr);

 if (is_llq_max_tx_burst_exists(io_sq)) {
  ena_trc_dbg("reset available entries in tx burst for queue %d to %d\n",
        io_sq->qid, max_entries_in_tx_burst);
  io_sq->entries_in_tx_burst_left = max_entries_in_tx_burst;
 }

 return 0;
}
