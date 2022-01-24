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
struct ptunit_result {int dummy; } ;
struct pt_section {int /*<<< orphan*/  size; int /*<<< orphan*/  filename; } ;
struct iscache_fixture {int /*<<< orphan*/  iscache; struct pt_section** section; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_section*,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_section*) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct iscache_fixture *cfix)
{
	struct pt_section *section;
	int found, isid;

	section = cfix->section[0];
	FUNC5(section);

	isid = FUNC0(&cfix->iscache, section, 0ull);
	FUNC3(isid, 0);

	found = FUNC1(&cfix->iscache, section->filename, 0ull,
				section->size, 0ull);
	FUNC2(found, 0);

	return FUNC4();
}