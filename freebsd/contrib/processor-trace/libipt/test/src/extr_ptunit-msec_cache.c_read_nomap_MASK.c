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
struct test_fixture {int /*<<< orphan*/  image; int /*<<< orphan*/  mcache; } ;
struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_mapped_section const**,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  pte_nomap ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_mapped_section const*) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct test_fixture *tfix)
{
	const struct pt_mapped_section *msec;
	int status;

	msec = NULL;

	status = FUNC0(&tfix->mcache, &msec, &tfix->image, 0ull);
	FUNC1(status, -pte_nomap);
	FUNC2(msec);

	return FUNC3();
}