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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* scriptname ; 

__attribute__((used)) static void
FUNC4(const char *msg)
{

	FUNC2(400, "Bad Request", NULL);
	FUNC1("<h1>Bad Request</h1>\n"
	     "<p>\n");
	FUNC1(msg);
	FUNC0("Try again from the\n"
	       "<a href=\"/%s\">main page</a>.\n"
	       "</p>", scriptname);
	FUNC3();
}