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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* progname ; 

__attribute__((used)) static void
FUNC3(FILE *stream, int status)
{
	FUNC2(stream,
FUNC0("usage: %s [--version] [-v] [--help] [-c [loyear,]hiyear] zonename ...\n\
\n\
Report bugs to tz@elsie.nci.nih.gov.\n"), progname);
	FUNC1(status);
}