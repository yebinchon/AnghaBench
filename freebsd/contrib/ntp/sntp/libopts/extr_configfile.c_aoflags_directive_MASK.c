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

/* Variables and functions */
 char* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char NUL ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static char *
FUNC6(tOptions * opts, char * txt)
{
    char * pz;

    pz = FUNC2(txt+1);
    txt = FUNC5(pz, '>');
    if (txt != NULL) {

        size_t len  = (unsigned)(txt - pz);
        char * ftxt = FUNC0(len + 1, "aoflags");

        FUNC3(ftxt, pz, len);
        ftxt[len] = NUL;
        FUNC4(opts, ftxt);
        FUNC1(ftxt);

        txt++;
    }

    return txt;
}