
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_q {int qid; TYPE_1__* udma; } ;
struct TYPE_2__ {int name; } ;


 int al_dbg (char*,int ,int ,int ) ;
 int al_udma_desc_action_add (struct al_udma_q*,int ) ;

void al_eth_rx_buffer_action(struct al_udma_q *rx_dma_q, uint32_t descs_num)
{
 al_dbg("[%s]: update the rx engine tail pointer: queue %d. descs %d\n",
   rx_dma_q->udma->name, rx_dma_q->qid, descs_num);


 al_udma_desc_action_add(rx_dma_q, descs_num);
}
