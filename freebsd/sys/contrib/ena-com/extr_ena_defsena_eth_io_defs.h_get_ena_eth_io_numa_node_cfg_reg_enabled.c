
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_numa_node_cfg_reg {int numa_cfg; } ;


 int ENA_ETH_IO_NUMA_NODE_CFG_REG_ENABLED_MASK ;
 int ENA_ETH_IO_NUMA_NODE_CFG_REG_ENABLED_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_numa_node_cfg_reg_enabled(const struct ena_eth_io_numa_node_cfg_reg *p)
{
 return (p->numa_cfg & ENA_ETH_IO_NUMA_NODE_CFG_REG_ENABLED_MASK) >> ENA_ETH_IO_NUMA_NODE_CFG_REG_ENABLED_SHIFT;
}
