
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_aq_create_sq_cmd {int sq_identity; } ;


 int ENA_ADMIN_AQ_CREATE_SQ_CMD_SQ_DIRECTION_MASK ;
 int ENA_ADMIN_AQ_CREATE_SQ_CMD_SQ_DIRECTION_SHIFT ;

__attribute__((used)) static inline uint8_t get_ena_admin_aq_create_sq_cmd_sq_direction(const struct ena_admin_aq_create_sq_cmd *p)
{
 return (p->sq_identity & ENA_ADMIN_AQ_CREATE_SQ_CMD_SQ_DIRECTION_MASK) >> ENA_ADMIN_AQ_CREATE_SQ_CMD_SQ_DIRECTION_SHIFT;
}
