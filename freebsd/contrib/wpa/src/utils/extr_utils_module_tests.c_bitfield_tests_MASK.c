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
struct bitfield {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct bitfield* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitfield*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bitfield*) ; 
 int FUNC3 (struct bitfield*) ; 
 scalar_t__ FUNC4 (struct bitfield*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bitfield*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct bitfield *bf;
	int i;
	int errors = 0;

	FUNC6(MSG_INFO, "bitfield tests");

	bf = FUNC0(123);
	if (bf == NULL)
		return -1;

	for (i = 0; i < 123; i++) {
		if (FUNC4(bf, i) || FUNC4(bf, i + 1))
			errors++;
		if (i > 0 && FUNC4(bf, i - 1))
			errors++;
		FUNC5(bf, i);
		if (!FUNC4(bf, i))
			errors++;
		FUNC1(bf, i);
		if (FUNC4(bf, i))
			errors++;
	}

	for (i = 123; i < 200; i++) {
		if (FUNC4(bf, i) || FUNC4(bf, i + 1))
			errors++;
		if (i > 0 && FUNC4(bf, i - 1))
			errors++;
		FUNC5(bf, i);
		if (FUNC4(bf, i))
			errors++;
		FUNC1(bf, i);
		if (FUNC4(bf, i))
			errors++;
	}

	for (i = 0; i < 123; i++) {
		if (FUNC4(bf, i) || FUNC4(bf, i + 1))
			errors++;
		FUNC5(bf, i);
		if (!FUNC4(bf, i))
			errors++;
	}

	for (i = 0; i < 123; i++) {
		if (!FUNC4(bf, i))
			errors++;
		FUNC1(bf, i);
		if (FUNC4(bf, i))
			errors++;
	}

	for (i = 0; i < 123; i++) {
		if (FUNC3(bf) != i)
			errors++;
		FUNC5(bf, i);
	}
	if (FUNC3(bf) != -1)
		errors++;
	for (i = 0; i < 123; i++) {
		if (!FUNC4(bf, i))
			errors++;
		FUNC1(bf, i);
		if (FUNC3(bf) != i)
			errors++;
		FUNC5(bf, i);
	}
	if (FUNC3(bf) != -1)
		errors++;

	FUNC2(bf);

	bf = FUNC0(8);
	if (bf == NULL)
		return -1;
	if (FUNC3(bf) != 0)
		errors++;
	for (i = 0; i < 8; i++)
		FUNC5(bf, i);
	if (FUNC3(bf) != -1)
		errors++;
	FUNC2(bf);

	if (errors) {
		FUNC6(MSG_ERROR, "%d bitfield test(s) failed", errors);
		return -1;
	}

	return 0;
}