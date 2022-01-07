
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_feature_offload_desc {int rx_supported; } ;


 int ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_L3_CSUM_IPV4_MASK ;

__attribute__((used)) static inline void set_ena_admin_feature_offload_desc_RX_L3_csum_ipv4(struct ena_admin_feature_offload_desc *p, uint32_t val)
{
 p->rx_supported |= val & ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_L3_CSUM_IPV4_MASK;
}
