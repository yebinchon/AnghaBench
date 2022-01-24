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
#define  SIGBUS 133 
#define  SIGCHLD 132 
#define  SIGFPE 131 
#define  SIGILL 130 
#define  SIGSEGV 129 
#define  SIGTRAP 128 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sigcode ; 
 char const* FUNC1 (int) ; 
 char const* FUNC2 (int) ; 
 char const* FUNC3 (int) ; 
 char const* FUNC4 (int) ; 
 char const* FUNC5 (int) ; 
 char const* FUNC6 (int) ; 

const char *
FUNC7(int sig, int si_code)
{
	const char *str;

	str = FUNC0(sigcode, si_code);
	if (str != NULL)
		return (str);
	
	switch (sig) {
	case SIGILL:
		return (FUNC4(si_code));
	case SIGBUS:
		return (FUNC1(si_code));
	case SIGSEGV:
		return (FUNC5(si_code));
	case SIGFPE:
		return (FUNC3(si_code));
	case SIGTRAP:
		return (FUNC6(si_code));
	case SIGCHLD:
		return (FUNC2(si_code));
	default:
		return (NULL);
	}
}