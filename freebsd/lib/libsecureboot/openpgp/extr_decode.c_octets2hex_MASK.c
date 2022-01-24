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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned char) ; 

char *
FUNC2(unsigned char *ptr, size_t n)
{
	char *hex;
	char *cp;
	size_t i;

	hex = FUNC0(2 * n + 1);
	if (hex != NULL) {
		for (i = 0, cp = hex; i < n; i++) {
			FUNC1(&cp[i*2], 3, "%02X", ptr[i]);
		}
	}
	return (hex);
}