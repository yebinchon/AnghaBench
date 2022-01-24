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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(void)
{
	const char *progname = FUNC2();

	(void)FUNC1(stderr,
"usage: %s [-46AadefginpRtVv] [-N netrc] [-o outfile] [-P port] [-q quittime]\n"
"           [-r retry] [-s srcaddr] [-T dir,max[,inc]]\n"
"           [[user@]host [port]] [host:path[/]] [file:///file]\n"
"           [ftp://[user[:pass]@]host[:port]/path[/]]\n"
"           [http://[user[:pass]@]host[:port]/path] [...]\n"
"       %s -u URL file [...]\n", progname, progname);
	FUNC0(1);
}