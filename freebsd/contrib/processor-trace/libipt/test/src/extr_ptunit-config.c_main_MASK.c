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
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  addr_filter_0 ; 
 int /*<<< orphan*/  addr_filter_1_3 ; 
 int /*<<< orphan*/  addr_filter_ip_in ; 
 int /*<<< orphan*/  addr_filter_ip_in_stop_in ; 
 int /*<<< orphan*/  addr_filter_ip_out ; 
 int /*<<< orphan*/  addr_filter_ip_out_stop_in ; 
 int /*<<< orphan*/  addr_filter_none ; 
 int /*<<< orphan*/  addr_filter_oob ; 
 int /*<<< orphan*/  addr_filter_size ; 
 int /*<<< orphan*/  addr_filter_stop_in ; 
 int /*<<< orphan*/  addr_filter_stop_out ; 
 int /*<<< orphan*/  cpu_errata_bad_cpuid ; 
 int /*<<< orphan*/  cpu_errata_bad_vendor ; 
 int /*<<< orphan*/  cpu_errata_null ; 
 int /*<<< orphan*/  cpu_errata_unknown ; 
 int /*<<< orphan*/  from_user ; 
 int /*<<< orphan*/  from_user_bad_buffer ; 
 int /*<<< orphan*/  from_user_big ; 
 int /*<<< orphan*/  from_user_null ; 
 int /*<<< orphan*/  from_user_small ; 
 int /*<<< orphan*/  from_user_too_small ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,int) ; 
 struct ptunit_suite FUNC2 (int,char**) ; 
 int FUNC3 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  size ; 

int FUNC4(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC2(argc, argv);

	FUNC0(suite, from_user_null);
	FUNC0(suite, from_user_too_small);
	FUNC0(suite, from_user_bad_buffer);
	FUNC0(suite, from_user);
	FUNC0(suite, from_user_small);
	FUNC0(suite, from_user_big);
	FUNC0(suite, size);

	FUNC0(suite, addr_filter_size);
	FUNC0(suite, addr_filter_none);
	FUNC0(suite, addr_filter_0);
	FUNC0(suite, addr_filter_1_3);
	FUNC1(suite, addr_filter_oob, 255);
	FUNC1(suite, addr_filter_oob, 8);

	FUNC0(suite, addr_filter_ip_in);
	FUNC0(suite, addr_filter_ip_out);
	FUNC0(suite, addr_filter_stop_in);
	FUNC0(suite, addr_filter_stop_out);
	FUNC0(suite, addr_filter_ip_out_stop_in);
	FUNC0(suite, addr_filter_ip_in_stop_in);

	FUNC0(suite, cpu_errata_null);
	FUNC0(suite, cpu_errata_unknown);
	FUNC0(suite, cpu_errata_bad_vendor);
	FUNC0(suite, cpu_errata_bad_cpuid);

	return FUNC3(&suite);
}