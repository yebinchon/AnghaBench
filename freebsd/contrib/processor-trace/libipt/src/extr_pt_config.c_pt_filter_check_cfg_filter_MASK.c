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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct pt_conf_addr_filter {int dummy; } ;

/* Variables and functions */
 scalar_t__ pt_addr_cfg_filter ; 
 scalar_t__ FUNC0 (struct pt_conf_addr_filter const*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct pt_conf_addr_filter const*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct pt_conf_addr_filter const*,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC4(const struct pt_conf_addr_filter *filter,
				      uint64_t addr)
{
	uint8_t n;

	if (!filter)
		return -pte_internal;

	for (n = 0; n < FUNC3(); ++n) {
		uint64_t addr_a, addr_b;
		uint32_t addr_cfg;

		addr_cfg = FUNC2(filter, n);
		if (addr_cfg != pt_addr_cfg_filter)
			continue;

		addr_a = FUNC0(filter, n);
		addr_b = FUNC1(filter, n);

		/* Note that both A and B are inclusive. */
		if ((addr_a <= addr) && (addr <= addr_b))
			return 1;
	}

	/* No filter hit.  If we have at least one FilterEn filter, this means
	 * that tracing is disabled; otherwise, tracing is enabled.
	 */
	for (n = 0; n < FUNC3(); ++n) {
		uint32_t addr_cfg;

		addr_cfg = FUNC2(filter, n);
		if (addr_cfg == pt_addr_cfg_filter)
			return 0;
	}

	return 1;
}