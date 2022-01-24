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
typedef  scalar_t__ tOptionLoadMode ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_BREAK_STR ; 
 int FUNC0 (char) ; 
 void* NUL ; 
 scalar_t__ OPTION_LOAD_KEEP ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4(char * txt, tOptionLoadMode mode)
{
    char * end = FUNC3(txt, ARG_BREAK_STR);
    int    space_break;

    /*
     *  Not having an argument to a configurable name is okay.
     */
    if (end == NULL)
        return txt + FUNC2(txt);

    /*
     *  If we are keeping all whitespace, then the  modevalue starts with the
     *  character that follows the end of the configurable name, regardless
     *  of which character caused it.
     */
    if (mode == OPTION_LOAD_KEEP) {
        *(end++) = NUL;
        return end;
    }

    /*
     *  If the name ended on a white space character, remember that
     *  because we'll have to skip over an immediately following ':' or '='
     *  (and the white space following *that*).
     */
    space_break = FUNC0(*end);
    *(end++) = NUL;

    end = FUNC1(end);
    if (space_break && ((*end == ':') || (*end == '=')))
        end = FUNC1(end+1);

    return end;
}