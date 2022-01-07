
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_aenq_link_change_desc {int flags; } ;


 int ENA_ADMIN_AENQ_LINK_CHANGE_DESC_LINK_STATUS_MASK ;

__attribute__((used)) static inline void set_ena_admin_aenq_link_change_desc_link_status(struct ena_admin_aenq_link_change_desc *p, uint32_t val)
{
 p->flags |= val & ENA_ADMIN_AENQ_LINK_CHANGE_DESC_LINK_STATUS_MASK;
}
