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
typedef  int u_char ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int const) ; 

void
FUNC3(const void *s, size_t len, FILE *f)
{
	size_t i, j;
	const u_char *p = (const u_char *)s;

	for (i = 0; i < len; i += 16) {
		FUNC0(f, "%.4zu: ", i);
		for (j = i; j < i + 16; j++) {
			if (j < len)
				FUNC0(f, "%02x ", p[j]);
			else
				FUNC0(f, "   ");
		}
		FUNC0(f, " ");
		for (j = i; j < i + 16; j++) {
			if (j < len) {
				if  (FUNC1(p[j]) && FUNC2(p[j]))
					FUNC0(f, "%c", p[j]);
				else
					FUNC0(f, ".");
			}
		}
		FUNC0(f, "\n");
	}
}