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
 int /*<<< orphan*/  cpu_incomplete ; 
 int /*<<< orphan*/  cpu_invalid ; 
 int /*<<< orphan*/  cpu_null ; 
 int /*<<< orphan*/  cpu_valid ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC1(argc, argv);

	FUNC0(suite, cpu_valid);
	FUNC0(suite, cpu_null);
	FUNC0(suite, cpu_incomplete);
	FUNC0(suite, cpu_invalid);

	return FUNC2(&suite);
}