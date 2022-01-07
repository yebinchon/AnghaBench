
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_rx_cdesc_base {int status; } ;


 int ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_rx_cdesc_base_l4_csum_checked(const struct ena_eth_io_rx_cdesc_base *p)
{
 return (p->status & ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_MASK) >> ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_SHIFT;
}
