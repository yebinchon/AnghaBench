#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {char* pzPROGNAME; int optCt; TYPE_2__* pOptDesc; int /*<<< orphan*/  pzProgName; int /*<<< orphan*/  pzProgPath; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_7__ {scalar_t__ pOptProc; } ;
typedef  TYPE_2__ tOptDesc ;
struct tm {int dummy; } ;

/* Variables and functions */
 int AO_NAME_SIZE ; 
 char* END_PRE_FMT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char NUL ; 
 char* PREAMBLE_FMT ; 
 int /*<<< orphan*/  SCRIPT ; 
 char* SHELL_MAGIC ; 
 int /*<<< orphan*/  START_MARK ; 
 char* STDOUT ; 
 int /*<<< orphan*/  TIME_FMT ; 
 int /*<<< orphan*/  TT_LONGUSAGE ; 
 int /*<<< orphan*/  TT_USAGE ; 
 int /*<<< orphan*/  TT_VERSION ; 
 char** FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tm* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ optionPrintVersion ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/ * script_leader ; 
 char* shell_prog ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned char) ; 

__attribute__((used)) static void
FUNC10(tOptions * opts)
{
    char tm_nm_buf[AO_NAME_SIZE];

    /*
     *  First, switch stdout to the output file name.
     *  Then, change the program name to the one defined
     *  by the definitions (rather than the current
     *  executable name).  Down case the upper cased name.
     */
    if (script_leader != NULL)
        FUNC3(script_leader, stdout);

    {
        char const * out_nm;

        {
            time_t    c_tim = FUNC8(NULL);
            struct tm * ptm = FUNC4(&c_tim);
            FUNC6(tm_nm_buf, AO_NAME_SIZE, TIME_FMT, ptm );
        }

        if (FUNC1(SCRIPT))
             out_nm = FUNC0(SCRIPT);
        else out_nm = STDOUT;

        if ((script_leader == NULL) && (shell_prog != NULL))
            FUNC5(SHELL_MAGIC, shell_prog);

        FUNC5(PREAMBLE_FMT, START_MARK, out_nm, tm_nm_buf);
    }

    FUNC5(END_PRE_FMT, opts->pzPROGNAME);

    /*
     *  Get a copy of the original program name in lower case and
     *  fill in an approximation of the program name from it.
     */
    {
        char *       pzPN = tm_nm_buf;
        char const * pz   = opts->pzPROGNAME;
        char **      pp;

        /* Copy the program name into the time/name buffer */
        for (;;) {
            if ((*pzPN++ = (char)FUNC9((unsigned char)*pz++)) == NUL)
                break;
        }

        pp  = FUNC2(&(opts->pzProgPath));
        *pp = tm_nm_buf;
        pp  = FUNC2(&(opts->pzProgName));
        *pp = tm_nm_buf;
    }

    FUNC7(opts, TT_LONGUSAGE, NULL);
    FUNC7(opts, TT_USAGE,     NULL);

    {
        tOptDesc * pOptDesc = opts->pOptDesc;
        int        optionCt = opts->optCt;

        for (;;) {
            if (pOptDesc->pOptProc == optionPrintVersion) {
                FUNC7(opts, TT_VERSION, pOptDesc);
                break;
            }

            if (--optionCt <= 0)
                break;
            pOptDesc++;
        }
    }
}