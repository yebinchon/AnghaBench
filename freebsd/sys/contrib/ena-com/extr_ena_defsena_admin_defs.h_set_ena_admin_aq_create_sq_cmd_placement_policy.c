
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_aq_create_sq_cmd {int sq_caps_2; } ;


 int ENA_ADMIN_AQ_CREATE_SQ_CMD_PLACEMENT_POLICY_MASK ;

__attribute__((used)) static inline void set_ena_admin_aq_create_sq_cmd_placement_policy(struct ena_admin_aq_create_sq_cmd *p, uint8_t val)
{
 p->sq_caps_2 |= val & ENA_ADMIN_AQ_CREATE_SQ_CMD_PLACEMENT_POLICY_MASK;
}
