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
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 

void
FUNC3(
	char *		nfmt,
	size_t		lennfmt,
	const char *	fmt,
	int		errval
	)
{
	char errmsg[256];
	char c;
	char *n;
	const char *f;
	size_t len;

	n = nfmt;
	f = fmt;
	while ((c = *f++) != '\0' && n < (nfmt + lennfmt - 1)) {
		if (c != '%') {
			*n++ = c;
			continue;
		}
		if ((c = *f++) != 'm') {
			*n++ = '%';
			if ('\0' == c)
				break;
			*n++ = c;
			continue;
		}
		FUNC0(errval, errmsg, sizeof(errmsg));
		len = FUNC2(errmsg);

		/* Make sure we have enough space for the error message */
		if ((n + len) < (nfmt + lennfmt - 1)) {
			FUNC1(n, errmsg, len);
			n += len;
		}
	}
	*n = '\0';
}