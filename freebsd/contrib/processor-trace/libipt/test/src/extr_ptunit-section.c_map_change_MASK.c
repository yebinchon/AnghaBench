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
struct section_fixture {int /*<<< orphan*/  section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_bad_image ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct section_fixture *sfix)
{
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	int errcode;

	FUNC5(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC2(errcode, 0);
	FUNC4(sfix->section);

	FUNC5(sfix, bytes);

	errcode = FUNC1(sfix->section);
	FUNC2(errcode, -pte_bad_image);

	return FUNC3();
}