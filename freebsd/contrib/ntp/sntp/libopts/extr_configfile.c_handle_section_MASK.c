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
struct TYPE_3__ {char* pzPROGNAME; } ;
typedef  TYPE_1__ tOptions ;

/* Variables and functions */
 int /*<<< orphan*/  NL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,size_t) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *
FUNC5(tOptions * opts, char * txt)
{
    size_t len = FUNC2(opts->pzPROGNAME);
    if (   (FUNC3(txt+1, opts->pzPROGNAME, len) == 0)
        && (txt[len+1] == ']'))
        return FUNC1(txt + len + 2, NL);

    if (len > 16)
        return NULL;

    {
        char z[24];
        FUNC0(z, "[%s]", opts->pzPROGNAME);
        txt = FUNC4(txt, z);
    }

    if (txt != NULL)
        txt = FUNC1(txt, NL);
    return txt;
}