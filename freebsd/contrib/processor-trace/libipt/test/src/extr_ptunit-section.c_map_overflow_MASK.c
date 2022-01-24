#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct section_fixture {TYPE_1__* section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;
struct TYPE_4__ {scalar_t__ mcount; } ;

/* Variables and functions */
 scalar_t__ UINT16_MAX ; 
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  pte_overflow ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct section_fixture *sfix)
{
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	int errcode;

	FUNC5(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC2(errcode, 0);
	FUNC4(sfix->section);

	sfix->section->mcount = UINT16_MAX;

	errcode = FUNC1(sfix->section);
	FUNC2(errcode, -pte_overflow);

	sfix->section->mcount = 0;

	return FUNC3();
}