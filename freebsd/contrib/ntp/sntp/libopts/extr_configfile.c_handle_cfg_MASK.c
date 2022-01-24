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
typedef  int /*<<< orphan*/  tOptions ;
typedef  int /*<<< orphan*/  tOptState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
#define  NL 129 
#define  NUL 128 
 int /*<<< orphan*/  OPTION_LOAD_UNCOOKED ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(tOptions * opts, tOptState * ost, char * txt, int dir)
{
    char * pzName = txt++;
    char * pzEnd  = FUNC4(txt, NL);

    if (pzEnd == NULL)
        return txt + FUNC5(txt);

    txt = FUNC1(txt);
    txt = FUNC2(txt);
    if (txt > pzEnd) {
    name_only:
        *pzEnd++ = NUL;
        FUNC3(opts, ost, pzName, dir, OPTION_LOAD_UNCOOKED);
        return pzEnd;
    }

    /*
     *  Either the first character after the name is a ':' or '=',
     *  or else we must have skipped over white space.  Anything else
     *  is an invalid format and we give up parsing the text.
     */
    if ((*txt == '=') || (*txt == ':')) {
        txt = FUNC2(txt+1);
        if (txt > pzEnd)
            goto name_only;
    } else if (! FUNC0(txt[-1]))
        return NULL;

    /*
     *  IF the value is continued, remove the backslash escape and push "pzEnd"
     *  on to a newline *not* preceded by a backslash.
     */
    if (pzEnd[-1] == '\\') {
        char * pcD = pzEnd-1;
        char * pcS = pzEnd;

        for (;;) {
            char ch = *(pcS++);
            switch (ch) {
            case NUL:
                pcS = NULL;
                /* FALLTHROUGH */

            case NL:
                *pcD = NUL;
                pzEnd = pcS;
                goto copy_done;

            case '\\':
                if (*pcS == NL)
                    ch = *(pcS++);
                /* FALLTHROUGH */
            default:
                *(pcD++) = ch;
            }
        } copy_done:;

    } else {
        /*
         *  The newline was not preceded by a backslash.  NUL it out
         */
        *(pzEnd++) = NUL;
    }

    /*
     *  "pzName" points to what looks like text for one option/configurable.
     *  It is NUL terminated.  Process it.
     */
    FUNC3(opts, ost, pzName, dir, OPTION_LOAD_UNCOOKED);

    return pzEnd;
}