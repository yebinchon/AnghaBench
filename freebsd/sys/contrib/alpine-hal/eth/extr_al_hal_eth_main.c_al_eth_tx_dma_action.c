
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_udma_q {int dummy; } ;


 int al_udma_desc_action_add (struct al_udma_q*,int ) ;

void al_eth_tx_dma_action(struct al_udma_q *tx_dma_q, uint32_t tx_descs)
{

 al_udma_desc_action_add(tx_dma_q, tx_descs);
}
