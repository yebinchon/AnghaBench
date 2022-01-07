
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_aq_create_sq_cmd {int sq_caps_2; } ;


 int ENA_ADMIN_AQ_CREATE_SQ_CMD_COMPLETION_POLICY_MASK ;
 int ENA_ADMIN_AQ_CREATE_SQ_CMD_COMPLETION_POLICY_SHIFT ;

__attribute__((used)) static inline void set_ena_admin_aq_create_sq_cmd_completion_policy(struct ena_admin_aq_create_sq_cmd *p, uint8_t val)
{
 p->sq_caps_2 |= (val << ENA_ADMIN_AQ_CREATE_SQ_CMD_COMPLETION_POLICY_SHIFT) & ENA_ADMIN_AQ_CREATE_SQ_CMD_COMPLETION_POLICY_MASK;
}
