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
 int /*<<< orphan*/  asid ; 
 int /*<<< orphan*/  asid_null ; 
 int /*<<< orphan*/  begin ; 
 int /*<<< orphan*/  end ; 
 int /*<<< orphan*/  map ; 
 int /*<<< orphan*/  offset ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  section ; 
 int /*<<< orphan*/  section_null ; 
 int /*<<< orphan*/  size ; 
 int /*<<< orphan*/  unmap ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC1(argc, argv);

	FUNC0(suite, begin);
	FUNC0(suite, end);
	FUNC0(suite, offset);
	FUNC0(suite, size);
	FUNC0(suite, asid);
	FUNC0(suite, asid_null);
	FUNC0(suite, map);
	FUNC0(suite, unmap);
	FUNC0(suite, section);
	FUNC0(suite, section_null);

	return FUNC2(&suite);
}