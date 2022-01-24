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
typedef  int /*<<< orphan*/  z ;
typedef  scalar_t__ tOptionLoadMode ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 char* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char NUL ; 
 scalar_t__ OPTION_LOAD_UNCOOKED ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char const*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static char *
FUNC6(char * intxt, char const * pznm, tOptionLoadMode mode)
{
    static char const fmt[] = "</%s>";
    size_t len = FUNC4(pznm) + sizeof(fmt) - 2 /* for %s */;
    char * etext;

    {
        char z[64], *pz = z;
        if (len >= sizeof(z))
            pz = FUNC0(len, "scan name");

        len = (size_t)FUNC3(pz, fmt, pznm);
        *intxt = ' ';
        etext = FUNC5(intxt, pz);
        if (pz != z) FUNC1(pz);
    }

    if (etext == NULL)
        return etext;

    {
        char * result = etext + len;

        if (mode != OPTION_LOAD_UNCOOKED)
            etext = FUNC2(intxt, etext);

        *etext = NUL;
        return result;
    }
}