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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BYPERLINE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int FUNC3 (char*) ; 

void
FUNC4(const u_char *ptr, int len)
{
	char    buf[100];
	int     k, count;

#define BYPERLINE	16

	for (count = 0; count < len; ptr += BYPERLINE, count += BYPERLINE) {

		/* Do hex */
		FUNC2(buf, sizeof(buf), "%04x:  ", count);
		for (k = 0; k < BYPERLINE; k++, count++)
			if (count < len)
				FUNC2(buf + FUNC3(buf),
				    sizeof(buf) - FUNC3(buf), "%02x ", ptr[k]);
			else
				FUNC2(buf + FUNC3(buf),
				    sizeof(buf) - FUNC3(buf), "   ");
		FUNC2(buf + FUNC3(buf), sizeof(buf) - FUNC3(buf), "  ");
		count -= BYPERLINE;

		/* Do ASCII */
		for (k = 0; k < BYPERLINE; k++, count++)
			if (count < len)
				FUNC2(buf + FUNC3(buf),
				    sizeof(buf) - FUNC3(buf),
				    "%c", FUNC1(ptr[k]) ? ptr[k] : '.');
			else
				FUNC2(buf + FUNC3(buf),
				    sizeof(buf) - FUNC3(buf), "  ");
		count -= BYPERLINE;

		/* Print it */
		FUNC0("%s", buf);
	}
}