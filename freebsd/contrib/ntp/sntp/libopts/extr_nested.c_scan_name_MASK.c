#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  strVal; int /*<<< orphan*/  nestVal; } ;
struct TYPE_6__ {TYPE_1__ v; } ;
typedef  TYPE_2__ tOptionValue ;

/* Variables and functions */
#define  NL 129 
#define  NUL 128 
 int /*<<< orphan*/  OPTION_LOAD_COOKED ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  option_load_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static char const *
FUNC6(char const * name, tOptionValue * res)
{
    tOptionValue * new_val;
    char const *   pzScan = name+1; /* we know first char is a name char */
    char const *   pzVal;
    size_t         nm_len = 1;
    size_t         d_len = 0;

    /*
     *  Scan over characters that name a value.  These names may not end
     *  with a colon, but they may contain colons.
     */
    pzScan = FUNC1(name + 1);
    if (pzScan[-1] == ':')
        pzScan--;
    nm_len = (size_t)(pzScan - name);

    pzScan = FUNC0(pzScan);

 re_switch:

    switch (*pzScan) {
    case '=':
    case ':':
        pzScan = FUNC0(pzScan + 1);
        if ((*pzScan == '=') || (*pzScan == ':'))
            goto default_char;
        goto re_switch;

    case NL:
    case ',':
        pzScan++;
        /* FALLTHROUGH */

    case NUL:
        FUNC2(&(res->v.nestVal), name, nm_len, NULL, (size_t)0);
        break;

    case '"':
    case '\'':
        pzVal = pzScan;
        pzScan = FUNC5(pzScan);
        d_len = (size_t)(pzScan - pzVal);
        new_val = FUNC2(&(res->v.nestVal), name, nm_len, pzVal,
                         d_len);
        if ((new_val != NULL) && (option_load_mode == OPTION_LOAD_COOKED))
            FUNC3(new_val->v.strVal, NULL);
        break;

    default:
    default_char:
        /*
         *  We have found some strange text value.  It ends with a newline
         *  or a comma.
         */
        pzVal = pzScan;
        for (;;) {
            char ch = *(pzScan++);
            switch (ch) {
            case NUL:
                pzScan--;
                d_len = (size_t)(pzScan - pzVal);
                goto string_done;
                /* FALLTHROUGH */

            case NL:
                if (   (pzScan > pzVal + 2)
                    && (pzScan[-2] == '\\')
                    && (pzScan[ 0] != NUL))
                    continue;
                /* FALLTHROUGH */

            case ',':
                d_len = (size_t)(pzScan - pzVal) - 1;
            string_done:
                new_val = FUNC2(&(res->v.nestVal), name, nm_len,
                                     pzVal, d_len);
                if (new_val != NULL)
                    FUNC4(new_val->v.strVal);
                goto leave_scan_name;
            }
        }
        break;
    } leave_scan_name:;

    return pzScan;
}