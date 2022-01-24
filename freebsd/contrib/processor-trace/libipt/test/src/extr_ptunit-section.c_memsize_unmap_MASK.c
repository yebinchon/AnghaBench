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
typedef  int /*<<< orphan*/  uint64_t ;
struct section_fixture {int /*<<< orphan*/  section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC9(struct section_fixture *sfix)
{
	uint64_t memsize;
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	int errcode;

	FUNC8(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC4(errcode, 0);
	FUNC6(sfix->section);

	errcode = FUNC1(sfix->section);
	FUNC4(errcode, 0);

	errcode = FUNC3(sfix->section);
	FUNC4(errcode, 0);

	errcode = FUNC2(sfix->section, &memsize);
	FUNC4(errcode, 0);
	FUNC7(memsize, 0ull);

	return FUNC5();
}