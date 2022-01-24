#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr_cfg; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct pt_config {TYPE_2__ addr_filter; } ;

/* Variables and functions */
 unsigned long long pt_addr_cfg_disabled ; 
 int /*<<< orphan*/  FUNC0 (struct pt_config*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_config config;
	uint8_t filter;

	FUNC0(&config);

	FUNC3(config.addr_filter.config.addr_cfg, 0ull);

	for (filter = 0; filter < 4; ++filter) {
		uint32_t addr_cfg;

		addr_cfg = FUNC1(&config.addr_filter, filter);

		FUNC3(addr_cfg, pt_addr_cfg_disabled);
	}

	return FUNC2();
}