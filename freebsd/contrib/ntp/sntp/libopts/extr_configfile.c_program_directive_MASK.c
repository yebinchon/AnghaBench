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
typedef  int /*<<< orphan*/  ttlfmt ;
struct TYPE_3__ {char const* pzProgName; } ;
typedef  TYPE_1__ tOptions ;

/* Variables and functions */
 char* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char NUL ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char*,char*) ; 
 char const* zCfgProg ; 

__attribute__((used)) static char *
FUNC8(tOptions * opts, char * txt)
{
    static char const ttlfmt[] = "<?";
    size_t ttl_len  = sizeof(ttlfmt) + FUNC5(zCfgProg);
    char * ttl      = FUNC0(ttl_len, "prog title");
    size_t name_len = FUNC5(opts->pzProgName);

    FUNC4(ttl, ttlfmt, sizeof(ttlfmt) - 1);
    FUNC4(ttl + sizeof(ttlfmt) - 1, zCfgProg, ttl_len - (sizeof(ttlfmt) - 1));

    do  {
        txt = FUNC3(txt+1);

        if (  (FUNC6(txt, opts->pzProgName, (int)name_len) == 0)
           && (FUNC2(txt[name_len])) ) {
            txt += name_len;
            break;
        }

        txt = FUNC7(txt, ttl);
    } while (txt != NULL);

    FUNC1(ttl);
    if (txt != NULL)
        for (;;) {
            if (*txt == NUL) {
                txt = NULL;
                break;
            }
            if (*(txt++) == '>')
                break;
        }

    return txt;
}