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
typedef  char Char ;
typedef  int /*<<< orphan*/  CCRETVAL ;

/* Variables and functions */
 int /*<<< orphan*/  CC_ERROR ; 
 int /*<<< orphan*/  CC_NORM ; 
 char* Cursor ; 
 int F_UP_SEARCH_HIST ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char* InputBuf ; 
 char* InputLim ; 
 size_t FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static CCRETVAL
FUNC3(Char *pattern, int dir)
{
    Char *cp;
    size_t len;

    len = FUNC1(pattern);

    if (dir == F_UP_SEARCH_HIST) {
	for (cp = Cursor; cp >= InputBuf; cp--)
	    if (FUNC2(cp, pattern, len) == 0 ||
		FUNC0(cp, pattern)) {
		Cursor = cp;
		return(CC_NORM);
	    }
	return(CC_ERROR);
    } else {
	for (cp = Cursor; *cp != '\0' && cp < InputLim; cp++)
	    if (FUNC2(cp, pattern, len) == 0 ||
		FUNC0(cp, pattern)) {
		Cursor = cp;
		return(CC_NORM);
	    }
	return(CC_ERROR);
    }
}