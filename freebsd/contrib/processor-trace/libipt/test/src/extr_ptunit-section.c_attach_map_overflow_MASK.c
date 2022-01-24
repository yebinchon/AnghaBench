#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct section_fixture {TYPE_1__* section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {int map; } ;
struct TYPE_6__ {scalar_t__ mcount; } ;

/* Variables and functions */
 scalar_t__ UINT16_MAX ; 
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (TYPE_1__*,struct pt_image_section_cache*) ; 
 int FUNC2 (TYPE_1__*,struct pt_image_section_cache*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  pte_overflow ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC8(struct section_fixture *sfix)
{
	struct pt_image_section_cache iscache;
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	int errcode;

	iscache.map = 1;

	FUNC7(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC4(errcode, 0);
	FUNC6(sfix->section);

	errcode = FUNC1(sfix->section, &iscache);
	FUNC4(errcode, 0);

	sfix->section->mcount = UINT16_MAX - 1;

	errcode = FUNC3(sfix->section);
	FUNC4(errcode, -pte_overflow);

	errcode = FUNC2(sfix->section, &iscache);
	FUNC4(errcode, 0);

	return FUNC5();
}