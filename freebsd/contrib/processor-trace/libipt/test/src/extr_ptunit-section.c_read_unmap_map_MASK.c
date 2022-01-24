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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int pte_nomap ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC10(struct section_fixture *sfix)
{
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status;

	FUNC9(sfix, bytes);

	status = FUNC1(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC5(status, 0);
	FUNC7(sfix->section);

	status = FUNC2(sfix->section);
	FUNC5(status, 0);

	status = FUNC3(sfix->section, buffer, 2, 0x0ull);
	FUNC5(status, 2);
	FUNC8(buffer[0], bytes[1]);
	FUNC8(buffer[1], bytes[2]);
	FUNC8(buffer[2], 0xcc);

	FUNC0(buffer, 0xcc, sizeof(buffer));

	status = FUNC4(sfix->section);
	FUNC5(status, 0);

	status = FUNC3(sfix->section, buffer, 2, 0x0ull);
	FUNC5(status, -pte_nomap);
	FUNC8(buffer[0], 0xcc);
	FUNC8(buffer[1], 0xcc);
	FUNC8(buffer[2], 0xcc);

	status = FUNC2(sfix->section);
	FUNC5(status, 0);

	status = FUNC3(sfix->section, buffer, 2, 0x0ull);
	FUNC5(status, 2);
	FUNC8(buffer[0], bytes[1]);
	FUNC8(buffer[1], bytes[2]);
	FUNC8(buffer[2], 0xcc);

	status = FUNC4(sfix->section);
	FUNC5(status, 0);

	return FUNC6();
}