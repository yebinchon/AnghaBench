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
struct pt_image_section_cache {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct pt_image_section_cache*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pt_image_section_cache*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_eos ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC8(struct section_fixture *sfix)
{
	struct pt_image_section_cache iscache;
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	int errcode;

	iscache.map = -pte_eos;

	FUNC7(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC4(errcode, 0);
	FUNC6(sfix->section);

	errcode = FUNC1(sfix->section, &iscache);
	FUNC4(errcode, 0);

	errcode = FUNC3(sfix->section);
	FUNC4(errcode, -pte_eos);

	errcode = FUNC2(sfix->section, &iscache);
	FUNC4(errcode, 0);

	return FUNC5();
}