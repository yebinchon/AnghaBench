#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_status ;
typedef  scalar_t__ ldns_pkt_opcode ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef  TYPE_1__ ldns_lookup_table ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ldns_opcodes ; 

ldns_status
FUNC3(ldns_buffer *output, ldns_pkt_opcode opcode)
{
	ldns_lookup_table *lt = FUNC2(ldns_opcodes, opcode);
	if (lt && lt->name) {
		FUNC0(output, "%s", lt->name);
	} else {
		FUNC0(output, "OPCODE%u", opcode);
	}
	return FUNC1(output);
}