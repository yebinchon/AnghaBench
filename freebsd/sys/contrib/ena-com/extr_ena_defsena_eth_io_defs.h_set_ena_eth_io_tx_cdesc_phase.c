
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_eth_io_tx_cdesc {int flags; } ;


 int ENA_ETH_IO_TX_CDESC_PHASE_MASK ;

__attribute__((used)) static inline void set_ena_eth_io_tx_cdesc_phase(struct ena_eth_io_tx_cdesc *p, uint8_t val)
{
 p->flags |= val & ENA_ETH_IO_TX_CDESC_PHASE_MASK;
}
