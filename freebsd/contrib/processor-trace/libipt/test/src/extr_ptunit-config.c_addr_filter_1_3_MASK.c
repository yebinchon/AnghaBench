#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {int addr1_cfg; int addr3_cfg; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr_cfg; TYPE_1__ ctl; } ;
struct TYPE_8__ {int addr1_a; int addr1_b; int addr3_a; int addr3_b; TYPE_2__ config; } ;
struct pt_config {TYPE_3__ addr_filter; } ;

/* Variables and functions */
 int pt_addr_cfg_disabled ; 
 int pt_addr_cfg_filter ; 
 int pt_addr_cfg_stop ; 
 int /*<<< orphan*/  FUNC0 (struct pt_config*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC7(void)
{
	struct pt_config config;
	uint64_t addr_a, addr_b;
	uint32_t addr_cfg;

	FUNC0(&config);
	config.addr_filter.config.ctl.addr1_cfg = pt_addr_cfg_filter;
	config.addr_filter.addr1_a = 0xa000ull;
	config.addr_filter.addr1_b = 0xb000ull;
	config.addr_filter.config.ctl.addr3_cfg = pt_addr_cfg_stop;
	config.addr_filter.addr3_a = 0x100a000ull;
	config.addr_filter.addr3_b = 0x100b000ull;

	FUNC6(config.addr_filter.config.addr_cfg, 0ull);

	addr_cfg = FUNC3(&config.addr_filter, 0);
	FUNC5(addr_cfg, pt_addr_cfg_disabled);

	addr_cfg = FUNC3(&config.addr_filter, 1);
	FUNC5(addr_cfg, pt_addr_cfg_filter);

	addr_a = FUNC1(&config.addr_filter, 1);
	FUNC5(addr_a, 0xa000ull);

	addr_b = FUNC2(&config.addr_filter, 1);
	FUNC5(addr_b, 0xb000ull);

	addr_cfg = FUNC3(&config.addr_filter, 2);
	FUNC5(addr_cfg, pt_addr_cfg_disabled);

	addr_cfg = FUNC3(&config.addr_filter, 3);
	FUNC5(addr_cfg, pt_addr_cfg_stop);

	addr_a = FUNC1(&config.addr_filter, 3);
	FUNC5(addr_a, 0x100a000ull);

	addr_b = FUNC2(&config.addr_filter, 3);
	FUNC5(addr_b, 0x100b000ull);

	return FUNC4();
}