
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_get_feature_link_desc {int flags; } ;


 int ENA_ADMIN_GET_FEATURE_LINK_DESC_AUTONEG_MASK ;

__attribute__((used)) static inline void set_ena_admin_get_feature_link_desc_autoneg(struct ena_admin_get_feature_link_desc *p, uint32_t val)
{
 p->flags |= val & ENA_ADMIN_GET_FEATURE_LINK_DESC_AUTONEG_MASK;
}
