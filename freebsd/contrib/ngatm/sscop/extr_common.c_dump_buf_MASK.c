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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC1(const char *w, const u_char *buf, size_t len)
{
	u_int i;

	FUNC0(stderr, "%s %zu: ", w, len);
	for(i = 0; i < len; i++) {
		if (i % 4 == 0 && i != 0)
			FUNC0(stderr, " ");
		FUNC0(stderr, "%02x", *buf++);
	}
	FUNC0(stderr, "\n");
}