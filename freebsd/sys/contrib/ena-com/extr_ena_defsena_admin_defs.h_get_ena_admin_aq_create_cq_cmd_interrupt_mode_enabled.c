
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_aq_create_cq_cmd {int cq_caps_1; } ;


 int ENA_ADMIN_AQ_CREATE_CQ_CMD_INTERRUPT_MODE_ENABLED_MASK ;
 int ENA_ADMIN_AQ_CREATE_CQ_CMD_INTERRUPT_MODE_ENABLED_SHIFT ;

__attribute__((used)) static inline uint8_t get_ena_admin_aq_create_cq_cmd_interrupt_mode_enabled(const struct ena_admin_aq_create_cq_cmd *p)
{
 return (p->cq_caps_1 & ENA_ADMIN_AQ_CREATE_CQ_CMD_INTERRUPT_MODE_ENABLED_MASK) >> ENA_ADMIN_AQ_CREATE_CQ_CMD_INTERRUPT_MODE_ENABLED_SHIFT;
}
