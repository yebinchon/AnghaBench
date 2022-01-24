#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;
struct ena_admin_aq_common_desc {int command_id; } ;

/* Variables and functions */
 int ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK ; 

__attribute__((used)) static inline void FUNC0(struct ena_admin_aq_common_desc *p, uint16_t val)
{
	p->command_id |= val & ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK;
}