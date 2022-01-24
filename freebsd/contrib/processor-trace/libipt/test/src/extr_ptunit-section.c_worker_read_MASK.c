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
struct section_fixture {int /*<<< orphan*/  section; } ;

/* Variables and functions */
 int num_work ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int pte_internal ; 
 int pte_invalid ; 

__attribute__((used)) static int FUNC5(void *arg)
{
	struct section_fixture *sfix;
	int it, errcode;

	sfix = arg;
	if (!sfix)
		return -pte_internal;

	for (it = 0; it < num_work; ++it) {
		uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
		int read;

		errcode = FUNC0(sfix->section);
		if (errcode < 0)
			return errcode;

		errcode = FUNC1(sfix->section);
		if (errcode < 0)
			goto out_put;

		read = FUNC3(sfix->section, buffer, 2, 0x0ull);
		if (read < 0)
			goto out_unmap;

		errcode = -pte_invalid;
		if ((read != 2) || (buffer[0] != 0x2) || (buffer[1] != 0x4))
			goto out_unmap;

		errcode = FUNC4(sfix->section);
		if (errcode < 0)
			goto out_put;

		errcode = FUNC2(sfix->section);
		if (errcode < 0)
			return errcode;
	}

	return 0;

out_unmap:
	(void) FUNC4(sfix->section);

out_put:
	(void) FUNC2(sfix->section);
	return errcode;
}