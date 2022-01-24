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
typedef  int wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *e, const wchar_t *w)
{
	FUNC0("      %s = ", e);
	if (w == NULL) {
		FUNC0("(null)");
		return;
	}
	FUNC0("\"");
	while (*w != L'\0') {
		unsigned int c = *w++;
		if (c >= 32 && c < 127)
			FUNC0("%c", c);
		else if (c < 256)
			FUNC0("\\x%02X", c);
		else if (c < 0x10000)
			FUNC0("\\u%04X", c);
		else
			FUNC0("\\U%08X", c);
	}
	FUNC0("\"\n");
}