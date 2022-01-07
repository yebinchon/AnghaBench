
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_numa_node_cfg_reg {int numa_cfg; } ;


 int ENA_ETH_IO_NUMA_NODE_CFG_REG_NUMA_MASK ;

__attribute__((used)) static inline void set_ena_eth_io_numa_node_cfg_reg_numa(struct ena_eth_io_numa_node_cfg_reg *p, uint32_t val)
{
 p->numa_cfg |= val & ENA_ETH_IO_NUMA_NODE_CFG_REG_NUMA_MASK;
}
