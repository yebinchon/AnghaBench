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

void
FUNC2()
{
	FUNC1(stderr, "usage: telnetd");
#ifdef	AUTHENTICATION
	fprintf(stderr,
	    " [-4] [-6] [-a (debug|other|user|valid|off|none)]\n\t");
#endif
#ifdef BFTPDAEMON
	fprintf(stderr, " [-B]");
#endif
	FUNC1(stderr, " [-debug]");
#ifdef DIAGNOSTICS
	fprintf(stderr, " [-D (options|report|exercise|netdata|ptydata)]\n\t");
#endif
#ifdef	AUTHENTICATION
	fprintf(stderr, " [-edebug]");
#endif
	FUNC1(stderr, " [-h]");
#if	defined(LINEMODE) && defined(KLUDGELINEMODE)
	fprintf(stderr, " [-k]");
#endif
#ifdef LINEMODE
	fprintf(stderr, " [-l]");
#endif
	FUNC1(stderr, " [-n]");
	FUNC1(stderr, "\n\t");
#ifdef	HAS_GETTOS
	fprintf(stderr, " [-S tos]");
#endif
#ifdef	AUTHENTICATION
	fprintf(stderr, " [-X auth-type]");
#endif
	FUNC1(stderr, " [-u utmp_hostname_length] [-U]");
	FUNC1(stderr, " [port]\n");
	FUNC0(1);
}