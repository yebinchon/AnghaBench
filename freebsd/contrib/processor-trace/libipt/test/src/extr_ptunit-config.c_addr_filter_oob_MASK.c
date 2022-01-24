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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_config {int /*<<< orphan*/  addr_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 unsigned long long pt_addr_cfg_disabled ; 
 int /*<<< orphan*/  FUNC1 (struct pt_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC7(uint8_t filter)
{
	struct pt_config config;
	uint64_t addr_a, addr_b;
	uint32_t addr_cfg;

	FUNC1(&config);

	FUNC0(&config.addr_filter, 0xcc, sizeof(config.addr_filter));

	addr_cfg = FUNC4(&config.addr_filter, filter);
	FUNC6(addr_cfg, pt_addr_cfg_disabled);

	addr_a = FUNC2(&config.addr_filter, filter);
	FUNC6(addr_a, 0ull);

	addr_b = FUNC3(&config.addr_filter, filter);
	FUNC6(addr_b, 0ull);

	return FUNC5();
}