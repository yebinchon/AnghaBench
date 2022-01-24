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
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  init_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,int) ; 
 struct ptunit_suite FUNC2 (int,char**) ; 
 int FUNC3 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  query_initial ; 
 int /*<<< orphan*/  query_noip ; 
 int /*<<< orphan*/  query_null ; 
 int /*<<< orphan*/  query_suppressed ; 
 int /*<<< orphan*/  status ; 
 int /*<<< orphan*/  status_initial ; 
 int /*<<< orphan*/  status_noip ; 
 int /*<<< orphan*/  status_null ; 
 int /*<<< orphan*/  status_suppressed ; 
 int /*<<< orphan*/  update_ip_bad_packet ; 
 int /*<<< orphan*/  update_ip_null_ip ; 
 int /*<<< orphan*/  update_ip_null_packet ; 
 int /*<<< orphan*/  update_ip_sext48 ; 
 int /*<<< orphan*/  update_ip_suppressed ; 
 int /*<<< orphan*/  update_ip_upd16 ; 
 int /*<<< orphan*/  update_ip_upd32 ; 

int FUNC4(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC2(argc, argv);

	FUNC0(suite, init);
	FUNC0(suite, init_null);
	FUNC0(suite, status_initial);
	FUNC0(suite, status);
	FUNC0(suite, status_null);
	FUNC0(suite, status_noip);
	FUNC0(suite, status_suppressed);
	FUNC0(suite, query_initial);
	FUNC0(suite, query);
	FUNC0(suite, query_null);
	FUNC0(suite, query_noip);
	FUNC0(suite, query_suppressed);
	FUNC1(suite, update_ip_suppressed, 0);
	FUNC1(suite, update_ip_suppressed, 1);
	FUNC1(suite, update_ip_upd16, 0);
	FUNC1(suite, update_ip_upd16, 1);
	FUNC1(suite, update_ip_upd32, 0);
	FUNC1(suite, update_ip_upd32, 1);
	FUNC1(suite, update_ip_sext48, 0);
	FUNC1(suite, update_ip_sext48, 1);
	FUNC1(suite, update_ip_bad_packet, 0);
	FUNC1(suite, update_ip_bad_packet, 1);
	FUNC0(suite, update_ip_null_ip);
	FUNC1(suite, update_ip_null_packet, 0);
	FUNC1(suite, update_ip_null_packet, 1);

	return FUNC3(&suite);
}