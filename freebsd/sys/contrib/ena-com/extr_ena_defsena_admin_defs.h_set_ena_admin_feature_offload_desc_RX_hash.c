
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_feature_offload_desc {int rx_supported; } ;


 int ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_HASH_MASK ;
 int ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_HASH_SHIFT ;

__attribute__((used)) static inline void set_ena_admin_feature_offload_desc_RX_hash(struct ena_admin_feature_offload_desc *p, uint32_t val)
{
 p->rx_supported |= (val << ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_HASH_SHIFT) & ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_HASH_MASK;
}
