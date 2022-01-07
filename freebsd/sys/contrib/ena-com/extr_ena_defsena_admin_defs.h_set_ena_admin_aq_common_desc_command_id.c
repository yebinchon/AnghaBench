
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ena_admin_aq_common_desc {int command_id; } ;


 int ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK ;

__attribute__((used)) static inline void set_ena_admin_aq_common_desc_command_id(struct ena_admin_aq_common_desc *p, uint16_t val)
{
 p->command_id |= val & ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK;
}
