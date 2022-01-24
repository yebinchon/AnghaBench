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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static const char *
FUNC2(int signo)
{
	static char buf[40];
	char *message;

	/* POSIX.1-2008 leaves strsignal(3)'s return value unspecified. */
	if ((message = FUNC1(signo)) != NULL)
		return message;
	(void)FUNC0(buf, sizeof(buf), "Unknown signal: %d", signo);
	return (buf);
}