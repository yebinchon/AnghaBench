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
typedef  int /*<<< orphan*/  visbuf ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  rbuf ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  errs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  iamremote ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  remin ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  vwrite ; 

int
FUNC5(void)
{
	char ch, *cp, resp, rbuf[2048], visbuf[2048];

	if (FUNC0(read, remin, &resp, sizeof(resp)) != sizeof(resp))
		FUNC2(0);

	cp = rbuf;
	switch (resp) {
	case 0:		/* ok */
		return (0);
	default:
		*cp++ = resp;
		/* FALLTHROUGH */
	case 1:		/* error, followed by error msg */
	case 2:		/* fatal error, "" */
		do {
			if (FUNC0(read, remin, &ch, sizeof(ch)) != sizeof(ch))
				FUNC2(0);
			*cp++ = ch;
		} while (cp < &rbuf[sizeof(rbuf) - 1] && ch != '\n');

		if (!iamremote) {
			cp[-1] = '\0';
			(void) FUNC3(visbuf, sizeof(visbuf),
			    NULL, "%s\n", rbuf);
			(void) FUNC0(vwrite, STDERR_FILENO,
			    visbuf, FUNC4(visbuf));
		}
		++errs;
		if (resp == 1)
			return (-1);
		FUNC1(1);
	}
	/* NOTREACHED */
}