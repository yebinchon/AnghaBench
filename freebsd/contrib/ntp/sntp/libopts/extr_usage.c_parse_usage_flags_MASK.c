#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t fnm_len; int /*<<< orphan*/  fnm_name; } ;
typedef  TYPE_1__ ao_flag_names_t ;

/* Variables and functions */
 int AOUF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
#define  NUL 128 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC4(ao_flag_names_t const * fnt, char const * txt)
{
    unsigned int res = 0;

    /*
     * The text may be passed in.  If not, use the environment variable.
     */
    if (txt == NULL) {
        txt = FUNC2("AUTOOPTS_USAGE");
        if (txt == NULL)
            return 0;
    }

    txt = FUNC1(txt);
    if (*txt == NUL)
        return 0;

    /*
     * search the string for table entries.  We must understand everything
     * we see in the string, or we give up on it.
     */
    for (;;) {
        int ix = 0;

        for (;;) {
            if (FUNC3(txt, fnt[ix].fnm_name, (int)fnt[ix].fnm_len) == 0)
                break;
            if (++ix >= AOUF_COUNT)
                return 0;
        }

        /*
         *  Make sure we have a full match.  Look for whitespace,
         *  a comma, or a NUL byte.
         */
        if (! FUNC0(txt[fnt[ix].fnm_len]))
            return 0;

        res |= 1U << ix;
        txt = FUNC1(txt + fnt[ix].fnm_len);

        switch (*txt) {
        case NUL:
            return res;

        case ',':
            txt = FUNC1(txt + 1);
            /* Something must follow the comma */

        default:
            continue;
        }
    }
}