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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(int exit_code)
{
    FUNC1(stderr, "Usage: telnetd");
    FUNC1(stderr, " [--help]");
    FUNC1(stderr, " [--version]");
#ifdef	AUTHENTICATION
    fprintf(stderr, " [-a (debug|other|otp|user|valid|off|none)]\n\t");
#endif
    FUNC1(stderr, " [-debug]");
#ifdef DIAGNOSTICS
    fprintf(stderr, " [-D (options|report|exercise|netdata|ptydata)]\n\t");
#endif
#ifdef	AUTHENTICATION
    fprintf(stderr, " [-edebug]");
#endif
    FUNC1(stderr, " [-h]");
    FUNC1(stderr, " [-L login]");
    FUNC1(stderr, " [-n]");
#ifdef	_CRAY
    fprintf(stderr, " [-r[lowpty]-[highpty]]");
#endif
    FUNC1(stderr, "\n\t");
#ifdef	HAVE_GETTOSBYNAME
    fprintf(stderr, " [-S tos]");
#endif
#ifdef	AUTHENTICATION
    fprintf(stderr, " [-X auth-type] [-y] [-z]");
#endif
    FUNC1(stderr, " [-u utmp_hostname_length] [-U]");
    FUNC1(stderr, " [port]\n");
    FUNC0(exit_code);
}