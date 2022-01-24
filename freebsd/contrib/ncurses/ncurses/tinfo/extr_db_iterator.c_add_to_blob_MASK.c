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
 int /*<<< orphan*/  NCURSES_PATHSEP ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* my_blob ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(const char *text, size_t limit)
{
    (void) limit;

    if (*text != '\0') {
	char *last = my_blob + FUNC1(my_blob);
	if (last != my_blob)
	    *last++ = NCURSES_PATHSEP;
	FUNC0(last, text, limit);
    }
}