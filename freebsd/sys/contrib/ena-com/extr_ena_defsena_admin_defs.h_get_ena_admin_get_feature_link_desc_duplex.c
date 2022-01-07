
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_get_feature_link_desc {int flags; } ;


 int ENA_ADMIN_GET_FEATURE_LINK_DESC_DUPLEX_MASK ;
 int ENA_ADMIN_GET_FEATURE_LINK_DESC_DUPLEX_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_admin_get_feature_link_desc_duplex(const struct ena_admin_get_feature_link_desc *p)
{
 return (p->flags & ENA_ADMIN_GET_FEATURE_LINK_DESC_DUPLEX_MASK) >> ENA_ADMIN_GET_FEATURE_LINK_DESC_DUPLEX_SHIFT;
}
