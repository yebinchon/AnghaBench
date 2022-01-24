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
 int /*<<< orphan*/  APOSTROPHE ; 
 char const* EMPTY_ARG ; 
 char const NUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(char const * str)
{
    /*
     *  Handle empty strings to make the rest of the logic simpler.
     */
    if ((str == NULL) || (*str == NUL)) {
        FUNC1(EMPTY_ARG, stdout);
        return;
    }

    /*
     *  Emit any single quotes/apostrophes at the start of the string and
     *  bail if that is all we need to do.
     */
    str = FUNC3(str);
    if (*str == NUL)
        return;

    /*
     *  Start the single quote string
     */
    FUNC0(APOSTROPHE, stdout);
    for (;;) {
        char const * pz = FUNC4(str, APOSTROPHE);
        if (pz == NULL)
            break;

        /*
         *  Emit the string up to the single quote (apostrophe) we just found.
         */
        (void)FUNC2(str, (size_t)(pz - str), (size_t)1, stdout);

        /*
         * Close the current string, emit the apostrophes and re-open the
         * string (IFF there is more text to print).
         */
        FUNC0(APOSTROPHE, stdout);
        str = FUNC3(pz);
        if (*str == NUL)
            return;

        FUNC0(APOSTROPHE, stdout);
    }

    /*
     *  If we broke out of the loop, we must still emit the remaining text
     *  and then close the single quote string.
     */
    FUNC1(str, stdout);
    FUNC0(APOSTROPHE, stdout);
}