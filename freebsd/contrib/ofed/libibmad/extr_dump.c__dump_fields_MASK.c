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
 int /*<<< orphan*/  FUNC0 (void*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *buf, int bufsz, void *data, int start, int end)
{
	char val[64];
	char *s = buf;
	int n, field;

	for (field = start; field < end && bufsz > 0; field++) {
		FUNC0(data, field, val);
		if (!FUNC1(field, s, bufsz-1, val))
			return -1;
		n = FUNC2(s);
		s += n;
		*s++ = '\n';
		*s = 0;
		n++;
		bufsz -= n;
	}

	return (int)(s - buf);
}