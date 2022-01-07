
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_aq_create_cq_cmd {int cq_caps_2; } ;


 int ENA_ADMIN_AQ_CREATE_CQ_CMD_CQ_ENTRY_SIZE_WORDS_MASK ;

__attribute__((used)) static inline void set_ena_admin_aq_create_cq_cmd_cq_entry_size_words(struct ena_admin_aq_create_cq_cmd *p, uint8_t val)
{
 p->cq_caps_2 |= val & ENA_ADMIN_AQ_CREATE_CQ_CMD_CQ_ENTRY_SIZE_WORDS_MASK;
}
