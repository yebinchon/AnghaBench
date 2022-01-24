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
struct pt_section {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; int /*<<< orphan*/  filename; } ;
struct iscache_fixture {int /*<<< orphan*/  iscache; struct pt_section** section; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_section*,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_section*) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct iscache_fixture *cfix)
{
	struct pt_section *section;
	int errcode, found, isid;

	section = cfix->section[0];
	FUNC6(section);

	isid = FUNC0(&cfix->iscache, section, 0ull);
	FUNC4(isid, 0);

	errcode = FUNC1(&cfix->iscache);
	FUNC3(errcode, 0);


	found = FUNC2(&cfix->iscache, section->filename,
				section->offset, section->size, 0ull);
	FUNC3(found, 0);

	return FUNC5();
}