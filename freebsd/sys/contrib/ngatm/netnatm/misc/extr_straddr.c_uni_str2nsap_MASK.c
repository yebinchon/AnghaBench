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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(u_char *out, const char *in)
{
	int i;
	int c;

	for(i = 0; i < 20; i++) {
		while((c = *in++) == '.')
			;
		if(!FUNC0(c) || !FUNC3(c))
			return -1;
		out[i] = FUNC1(c) ? (c - '0')
			: FUNC2(c) ? (c - 'a' + 10)
			: (c - 'A' + 10);
		out[i] <<= 4;
		c = *in++;
		if(!FUNC0(c) || !FUNC3(c))
			return -1;
		out[i] |= FUNC1(c) ? (c - '0')
			: FUNC2(c) ? (c - 'a' + 10)
			: (c - 'A' + 10);
	}
	return *in != '\0';
}