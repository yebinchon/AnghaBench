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
typedef  int /*<<< orphan*/  uint64_t ;
struct section_fixture {int /*<<< orphan*/ * section; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct section_fixture *sfix)
{
	uint64_t size;
	int errcode;

	errcode = FUNC0(NULL, &size);
	FUNC1(errcode, -pte_internal);

	errcode = FUNC0(sfix->section, NULL);
	FUNC1(errcode, -pte_internal);

	errcode = FUNC0(NULL, NULL);
	FUNC1(errcode, -pte_internal);

	return FUNC2();
}