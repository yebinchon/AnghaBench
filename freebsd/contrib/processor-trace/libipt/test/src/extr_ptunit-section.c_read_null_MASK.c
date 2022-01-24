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
typedef  int uint8_t ;
struct section_fixture {int /*<<< orphan*/ * section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC9(struct section_fixture *sfix)
{
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	uint8_t buffer[] = { 0xcc };
	int status;

	FUNC8(sfix, bytes);

	status = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC4(status, 0);
	FUNC6(sfix->section);

	status = FUNC1(sfix->section);
	FUNC4(status, 0);

	status = FUNC2(sfix->section, NULL, 1, 0x0ull);
	FUNC4(status, -pte_internal);
	FUNC7(buffer[0], 0xcc);

	status = FUNC2(NULL, buffer, 1, 0x0ull);
	FUNC4(status, -pte_internal);
	FUNC7(buffer[0], 0xcc);

	status = FUNC3(sfix->section);
	FUNC4(status, 0);

	return FUNC5();
}