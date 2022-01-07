
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_aq_common_desc {int flags; } ;


 int ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK ;
 int ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_SHIFT ;

__attribute__((used)) static inline void set_ena_admin_aq_common_desc_ctrl_data_indirect(struct ena_admin_aq_common_desc *p, uint8_t val)
{
 p->flags |= (val << ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_SHIFT) & ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK;
}
