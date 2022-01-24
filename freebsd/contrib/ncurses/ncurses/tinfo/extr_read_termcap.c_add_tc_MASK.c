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
 int MAXPATHS ; 
 char NCURSES_PATHSEP ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_DATABASE ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(char *termpaths[], char *path, int count)
{
    char *save = FUNC2(path, NCURSES_PATHSEP);
    if (save != 0)
	*save = '\0';
    if (count < MAXPATHS
	&& FUNC1(path, R_OK) == 0) {
	termpaths[count++] = path;
	FUNC0(TRACE_DATABASE, ("Adding termpath %s", path));
    }
    termpaths[count] = 0;
    if (save != 0)
	*save = NCURSES_PATHSEP;
    return count;
}