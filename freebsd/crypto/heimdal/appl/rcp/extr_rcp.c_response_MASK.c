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
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  errs ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  iamremote ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  remin ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4(void)
{
	char ch, *cp, resp, rbuf[BUFSIZ];

	if (FUNC2(remin, &resp, sizeof(resp)) != sizeof(resp))
		FUNC1(0);

	cp = rbuf;
	switch(resp) {
	case 0:				/* ok */
		return (0);
	default:
		*cp++ = resp;
		/* FALLTHROUGH */
	case 1:				/* error, followed by error msg */
	case 2:				/* fatal error, "" */
		do {
			if (FUNC2(remin, &ch, sizeof(ch)) != sizeof(ch))
				FUNC1(0);
			*cp++ = ch;
		} while (cp < &rbuf[BUFSIZ] && ch != '\n');

		if (!iamremote)
			FUNC3(STDERR_FILENO, rbuf, cp - rbuf);
		++errs;
		if (resp == 1)
			return (-1);
		FUNC0(1);
	}
	/* NOTREACHED */
}