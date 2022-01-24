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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  NL ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static bool
FUNC3(char ** pps, char * pq, int * lnct_p)
{
    char * ps = *pps + 1;

    for (;;) {
        while (FUNC0(*ps))
            if (*(ps++) == NL)
                (*lnct_p)++;

        /*
         *  IF the next character is a quote character,
         *  THEN we will concatenate the strings.
         */
        switch (*ps) {
        case '"':
        case '\'':
            *pq  = *(ps++);  /* assign new quote character and return */
            *pps = ps;
            return true;

        case '/':
            /*
             *  Allow for a comment embedded in the concatenated string.
             */
            switch (ps[1]) {
            default:
                *pps = NULL;
                return false;

            case '/':
                /*
                 *  Skip to end of line
                 */
                ps = FUNC1(ps, NL);
                if (ps == NULL) {
                    *pps = NULL;
                    return false;
                }
                break;

            case '*':
            {
                char * p = FUNC2( ps+2, "*/" );
                /*
                 *  Skip to terminating star slash
                 */
                if (p == NULL) {
                    *pps = NULL;
                    return false;
                }

                while (ps < p) {
                    if (*(ps++) == NL)
                        (*lnct_p)++;
                }

                ps = p + 2;
            }
            }
            continue;

        default:
            /*
             *  The next non-whitespace character is not a quote.
             *  The series of quoted strings has come to an end.
             */
            *pps = ps;
            return false;
        }
    }
}