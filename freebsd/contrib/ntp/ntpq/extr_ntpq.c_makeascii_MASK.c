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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void
FUNC1(
	size_t length,
	const char *data,
	FILE *fp
	)
{
	const u_char *data_u_char;
	const u_char *cp;
	int c;

	data_u_char = (const u_char *)data;

	for (cp = data_u_char; cp < data_u_char + length; cp++) {
		c = (int)*cp;
		if (c & 0x80) {
			FUNC0('M', fp);
			FUNC0('-', fp);
			c &= 0x7f;
		}

		if (c < ' ') {
			FUNC0('^', fp);
			FUNC0(c + '@', fp);
		} else if (0x7f == c) {
			FUNC0('^', fp);
			FUNC0('?', fp);
		} else
			FUNC0(c, fp);
	}
}