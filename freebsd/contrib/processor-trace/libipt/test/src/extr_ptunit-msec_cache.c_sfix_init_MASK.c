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
struct test_fixture {int /*<<< orphan*/  image; int /*<<< orphan*/  mcache; int /*<<< orphan*/  section; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ptunit_result FUNC1 () ; 

__attribute__((used)) static struct ptunit_result FUNC2(struct test_fixture *tfix)
{
	FUNC0(&tfix->section, 0, sizeof(tfix->section));
	FUNC0(&tfix->mcache, 0, sizeof(tfix->mcache));
	FUNC0(&tfix->image, 0, sizeof(tfix->image));

	return FUNC1();
}