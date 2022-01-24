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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *p, const char *ref, size_t l, size_t offset)
{
	size_t i, j;
	char sep;

	if (p == NULL) {
		FUNC0("(null)\n");
		return;
	}
	for(i=0; i < l; i+=16) {
		FUNC0("%04x", (unsigned)(i + offset));
		sep = ' ';
		for (j = 0; j < 16 && i + j < l; j++) {
			if (ref != NULL && p[i + j] != ref[i + j])
				sep = '_';
			FUNC0("%c%02x", sep, 0xff & (int)p[i+j]);
			if (ref != NULL && p[i + j] == ref[i + j])
				sep = ' ';
		}
		for (; j < 16; j++) {
			FUNC0("%c  ", sep);
			sep = ' ';
		}
		FUNC0("%c", sep);
		for (j=0; j < 16 && i + j < l; j++) {
			int c = p[i + j];
			if (c >= ' ' && c <= 126)
				FUNC0("%c", c);
			else
				FUNC0(".");
		}
		FUNC0("\n");
	}
}