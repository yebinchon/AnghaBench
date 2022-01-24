#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ optEquivIndex; char* pz_Name; char* pz_DisableName; int /*<<< orphan*/  fOptState; } ;
typedef  TYPE_1__ tOptDesc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char NL ; 
 scalar_t__ NO_EQUIVALENT ; 
 scalar_t__ OPARG_TYPE_NUMERIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(FILE * fp, tOptDesc * od, char const * l_arg)
{
    int space_ct;

    /*
     *  There is an argument.  Pad the name so values line up.
     *  Not disabled *OR* this got equivalenced to another opt,
     *  then use current option name.
     *  Otherwise, there must be a disablement name.
     */
    {
        char const * pz =
            (! FUNC0(od) || (od->optEquivIndex != NO_EQUIVALENT))
            ? od->pz_Name
            : od->pz_DisableName;
        space_ct = 17 - FUNC7(pz);
        FUNC4(pz, fp);
    }

    if (  (l_arg == NULL)
       && (FUNC1(od->fOptState) != OPARG_TYPE_NUMERIC))
        goto end_entry;

    FUNC4(" = ", fp);
    while (space_ct-- > 0)  FUNC3(' ', fp);

    /*
     *  IF the option is numeric only,
     *  THEN the char pointer is really the number
     */
    if (FUNC1(od->fOptState) == OPARG_TYPE_NUMERIC)
        FUNC2(fp, "%d", (int)(intptr_t)l_arg);

    else {
        for (;;) {
            char const * eol = FUNC6(l_arg, NL);

            /*
             *  IF this is the last line
             *  THEN bail and print it
             */
            if (eol == NULL)
                break;

            /*
             *  Print the continuation and the text from the current line
             */
            (void)FUNC5(l_arg, (size_t)(eol - l_arg), (size_t)1, fp);
            l_arg = eol+1; /* advance the Last Arg pointer */
            FUNC4("\\\n", fp);
        }

        /*
         *  Terminate the entry
         */
        FUNC4(l_arg, fp);
    }

end_entry:
    FUNC3(NL, fp);
}