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
 char NUL ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char const*) ; 
 unsigned int FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(char * buf, int buf_sz, char const * name)
{
    char * dir_part = buf;

    for (;;) {
        int ch = (int)*++name;
        if (! FUNC0(ch))
            break;
        *(dir_part++) = (char)ch;
    }

    if (dir_part == buf)
        return false;

    *dir_part = NUL;

    dir_part = FUNC1(buf);

    /*
     *  Environment value not found -- skip the home list entry
     */
    if (dir_part == NULL)
        return false;

    if (FUNC3(dir_part) + 1 + FUNC3(name) >= (unsigned)buf_sz)
        return false;

    FUNC2(buf, "%s%s", dir_part, name);
    return true;
}