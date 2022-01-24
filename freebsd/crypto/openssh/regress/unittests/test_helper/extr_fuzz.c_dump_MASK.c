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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(u_char *p, size_t len)
{
	size_t i, j;

	for (i = 0; i < len; i += 16) {
		FUNC0(stderr, "%.4zd: ", i);
		for (j = i; j < i + 16; j++) {
			if (j < len)
				FUNC0(stderr, "%02x ", p[j]);
			else
				FUNC0(stderr, "   ");
		}
		FUNC0(stderr, " ");
		for (j = i; j < i + 16; j++) {
			if (j < len) {
				if  (FUNC1(p[j]) && FUNC2(p[j]))
					FUNC0(stderr, "%c", p[j]);
				else
					FUNC0(stderr, ".");
			}
		}
		FUNC0(stderr, "\n");
	}
}