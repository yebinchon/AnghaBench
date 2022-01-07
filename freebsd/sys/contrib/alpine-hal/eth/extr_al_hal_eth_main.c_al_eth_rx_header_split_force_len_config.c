
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {int * udma_q; } ;
struct al_hal_eth_adapter {TYPE_1__ rx_udma; } ;
typedef int al_bool ;


 int AL_TRUE ;
 int al_udma_s2m_q_compl_hdr_split_config (int *,int ,int ,size_t) ;

int al_eth_rx_header_split_force_len_config(struct al_hal_eth_adapter *adapter,
     al_bool enable,
     uint32_t qid,
     uint32_t header_len)
{
 al_udma_s2m_q_compl_hdr_split_config(&(adapter->rx_udma.udma_q[qid]), enable,
          AL_TRUE, header_len);

 return 0;
}
