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
typedef  int /*<<< orphan*/  u_int8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC4(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	FUNC1("%s", tag);
	if (verbose) {
		const char *sep;
		int n;

		ie += 2, ielen -= 2;

		FUNC1("<v%u", FUNC0(ie));
		ie += 2, ielen -= 2;

		FUNC1(" mc:%s", FUNC2(ie));
		ie += 4, ielen -= 4;

		/* unicast ciphers */
		n = FUNC0(ie);
		ie += 2, ielen -= 2;
		sep = " uc:";
		for (; n > 0; n--) {
			FUNC1("%s%s", sep, FUNC2(ie));
			ie += 4, ielen -= 4;
			sep = "+";
		}

		/* key management algorithms */
		n = FUNC0(ie);
		ie += 2, ielen -= 2;
		sep = " km:";
		for (; n > 0; n--) {
			FUNC1("%s%s", sep, FUNC3(ie));
			ie += 4, ielen -= 4;
			sep = "+";
		}

		if (ielen > 2)		/* optional capabilities */
			FUNC1(", caps 0x%x", FUNC0(ie));
		/* XXXPMKID */
		FUNC1(">");
	}
}