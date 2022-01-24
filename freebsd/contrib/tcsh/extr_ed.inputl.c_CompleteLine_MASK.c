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

/* Variables and functions */
 char* Cursor ; 
 char* InputBuf ; 
 char* LastChar ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  RECOGNIZE ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void)
{
    int     endflag, tmatch;
    Char   *argptr, *OldCursor, *OldLastChar;

    OldLastChar = LastChar;
    OldCursor = Cursor;
    argptr = InputBuf;
    endflag = 1;
    do {
	while (FUNC2(*argptr) || FUNC1(*argptr))
	    argptr++;
	for (Cursor = argptr;
	     *Cursor != '\0' && ((Cursor != argptr && Cursor[-1] == '\\') ||
				 (!FUNC2(*Cursor) && !FUNC1(*Cursor)));
	     Cursor++)
	     continue;
	if (*Cursor == '\0') {
	    Cursor = LastChar;
	    if (LastChar[-1] == '\n')
		Cursor--;
	    endflag = 0;
	}
	if (!FUNC0(*argptr) && FUNC3(argptr, InputBuf)) {
	    tmatch = FUNC4(InputBuf, Cursor - InputBuf, RECOGNIZE);
	    if (tmatch <= 0) {
                return 0;
            } else if (tmatch > 1) {
                return 2;
	    }
	    if (LastChar != OldLastChar) {
		if (argptr < OldCursor)
		    OldCursor += (LastChar - OldLastChar);
		OldLastChar = LastChar;
	    }
	}
	argptr = Cursor;
    } while (endflag);
    Cursor = OldCursor;
    return 1;
}