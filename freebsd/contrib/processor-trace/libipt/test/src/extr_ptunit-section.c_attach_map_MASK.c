#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct section_fixture {TYPE_1__* section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {scalar_t__ map; } ;
struct TYPE_7__ {int /*<<< orphan*/  mcount; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (TYPE_1__*,struct pt_image_section_cache*) ; 
 int FUNC2 (TYPE_1__*,struct pt_image_section_cache*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC10(struct section_fixture *sfix)
{
	struct pt_image_section_cache iscache;
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	int errcode;

	iscache.map = 0;

	FUNC9(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC5(errcode, 0);
	FUNC7(sfix->section);

	errcode = FUNC1(sfix->section, &iscache);
	FUNC5(errcode, 0);

	errcode = FUNC3(sfix->section);
	FUNC5(errcode, 0);

	errcode = FUNC3(sfix->section);
	FUNC5(errcode, 0);

	FUNC8(sfix->section->mcount, 2);

	errcode = FUNC4(sfix->section);
	FUNC5(errcode, 0);

	errcode = FUNC4(sfix->section);
	FUNC5(errcode, 0);

	errcode = FUNC2(sfix->section, &iscache);
	FUNC5(errcode, 0);

	return FUNC6();
}