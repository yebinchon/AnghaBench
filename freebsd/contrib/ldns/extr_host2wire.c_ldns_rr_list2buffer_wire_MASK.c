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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_SECTION_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC4(ldns_buffer *buffer,const ldns_rr_list *rr_list)
{
	uint16_t rr_count;
	uint16_t i;

	rr_count = FUNC3(rr_list);
	for(i = 0; i < rr_count; i++) {
		(void)FUNC1(buffer, FUNC2(rr_list, i), 
					  LDNS_SECTION_ANY);
	}
	return FUNC0(buffer);
}