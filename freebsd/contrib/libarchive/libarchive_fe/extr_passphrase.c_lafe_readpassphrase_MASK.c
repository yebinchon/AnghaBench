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
#define  EINTR 128 
 int /*<<< orphan*/  RPP_ECHO_OFF ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 char* FUNC1 (char const*,char*,size_t,int /*<<< orphan*/ ) ; 

char *
FUNC2(const char *prompt, char *buf, size_t bufsiz)
{
	char *p;

	p = FUNC1(prompt, buf, bufsiz, RPP_ECHO_OFF);
	if (p == NULL) {
		switch (errno) {
		case EINTR:
			break;
		default:
			FUNC0(1, errno, "Couldn't read passphrase");
			break;
		}
	}
	return (p);
}