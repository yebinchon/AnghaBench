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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC2(const char* tag, const uint8_t *ie, size_t ielen, int maxlen)
{
	FUNC0("%s", tag);
	if (verbose) {
		maxlen -= FUNC1(tag)+2;
		if (2*ielen > maxlen)
			maxlen--;
		FUNC0("<");
		for (; ielen > 0; ie++, ielen--) {
			if (maxlen-- <= 0)
				break;
			FUNC0("%02x", *ie);
		}
		if (ielen != 0)
			FUNC0("-");
		FUNC0(">");
	}
}