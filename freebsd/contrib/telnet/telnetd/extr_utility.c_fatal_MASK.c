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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ encrypt_output ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

void
FUNC7(int f, const char *msg)
{
	char buf[BUFSIZ];

	(void) FUNC4(buf, sizeof(buf), "telnetd: %s.\r\n", msg);
#ifdef	ENCRYPTION
	if (encrypt_output) {
		/*
		 * Better turn off encryption first....
		 * Hope it flushes...
		 */
		encrypt_send_end();
		netflush();
	}
#endif	/* ENCRYPTION */
	(void) FUNC6(f, buf, (int)FUNC5(buf));
	FUNC3(1);	/*XXX*/
	FUNC1(1);
}