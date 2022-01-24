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
struct section_fixture {int /*<<< orphan*/  thrd; int /*<<< orphan*/ * name; int /*<<< orphan*/ * file; int /*<<< orphan*/ * section; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  ptunit_thrd_init ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct section_fixture *sfix)
{
	int errcode;

	sfix->section = NULL;
	sfix->file = NULL;
	sfix->name = NULL;

	errcode = FUNC3(&sfix->file, &sfix->name, "wb");
	FUNC0(errcode, 0);

	FUNC2(ptunit_thrd_init, &sfix->thrd);

	return FUNC1();
}