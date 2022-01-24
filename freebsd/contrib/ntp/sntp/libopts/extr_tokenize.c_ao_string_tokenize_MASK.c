#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int** tkn_list; size_t tkn_ct; } ;
typedef  TYPE_1__ token_list_t ;
typedef  int ch_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (char const) ; 
#define  NUL 128 
 char* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int**,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int**,char const**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

token_list_t *
FUNC6(char const * str)
{
    token_list_t * res = FUNC2(str);
    ch_t * pzDest;

    /*
     *  Now copy each token into the output buffer.
     */
    if (res == NULL)
        return res;

    pzDest = (ch_t *)(res->tkn_list[0]);
    res->tkn_ct  = 0;

    do  {
        res->tkn_list[ res->tkn_ct++ ] = pzDest;
        for (;;) {
            int ch = (ch_t)*str;
            if (FUNC0(ch)) {
            found_white_space:
                str = FUNC1(str+1);
                break;
            }

            switch (ch) {
            case '"':
                FUNC3(&pzDest, &str);
                if (str == NULL) {
                    FUNC5(res);
                    errno = EINVAL;
                    return NULL;
                }
                if (FUNC0(*str))
                    goto found_white_space;
                break;

            case '\'':
                FUNC4(&pzDest, &str);
                if (str == NULL) {
                    FUNC5(res);
                    errno = EINVAL;
                    return NULL;
                }
                if (FUNC0(*str))
                    goto found_white_space;
                break;

            case NUL:
                goto copy_done;

            default:
                str++;
                *(pzDest++) = (unsigned char)ch;
            }
        } copy_done:;

        /*
         * NUL terminate the last token and see if we have any more tokens.
         */
        *(pzDest++) = NUL;
    } while (*str != NUL);

    res->tkn_list[ res->tkn_ct ] = NULL;

    return res;
}