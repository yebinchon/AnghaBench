
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_feature_offload_desc {int tx; } ;


 int ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV6_MASK ;
 int ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV6_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_admin_feature_offload_desc_tso_ipv6(const struct ena_admin_feature_offload_desc *p)
{
 return (p->tx & ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV6_MASK) >> ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV6_SHIFT;
}
