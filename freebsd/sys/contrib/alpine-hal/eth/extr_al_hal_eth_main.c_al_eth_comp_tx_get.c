
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_udma_q {int qid; TYPE_1__* udma; } ;
struct TYPE_2__ {int name; } ;


 int al_dbg (char*,int ,int ,int) ;
 int al_udma_cdesc_ack (struct al_udma_q*,int) ;
 int al_udma_cdesc_get_all (struct al_udma_q*,int *) ;

int al_eth_comp_tx_get(struct al_udma_q *tx_dma_q)
{
 int rc;

 rc = al_udma_cdesc_get_all(tx_dma_q, ((void*)0));
 if (rc != 0) {
  al_udma_cdesc_ack(tx_dma_q, rc);
  al_dbg("[%s %d]: tx completion: descs (%d)\n",
    tx_dma_q->udma->name, tx_dma_q->qid, rc);
 }

 return rc;
}
