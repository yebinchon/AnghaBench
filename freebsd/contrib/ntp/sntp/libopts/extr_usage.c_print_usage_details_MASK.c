#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int fOptSet; char const* pzExplain; char const* pzPackager; int /*<<< orphan*/  pzProgName; int /*<<< orphan*/ * pzBugAddr; TYPE_1__* pOptDesc; } ;
typedef  TYPE_2__ tOptions ;
struct TYPE_10__ {int fOptState; } ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NL ; 
#define  OPTPROC_LONGOPT 130 
#define  OPTPROC_L_N_S 129 
 int OPTPROC_NUM_OPT ; 
 int OPTPROC_REORDER ; 
#define  OPTPROC_SHORTOPT 128 
 int OPTST_DOCUMENT ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_fmt_buf ; 
 scalar_t__ option_usage_fp ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,char const**) ; 
 int FUNC11 (TYPE_2__*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ stderr ; 
 int tab_skip_ct ; 
 char const* zFlagOkay ; 
 char* zFmtFmt ; 
 char const* zNoFlags ; 
 char const* zNumberOpt ; 
 char const* zOptsOnly ; 
 char* zPlsSendBugs ; 
 char const* zReorder ; 
 int /*<<< orphan*/  zstderr_name ; 
 int /*<<< orphan*/  zstdout_name ; 
 int /*<<< orphan*/  zwriting ; 

__attribute__((used)) static void
FUNC13(tOptions * opts, int exit_code)
{
    {
        char const * pOptTitle = NULL;
        int flen;

        /*
         *  Determine which header and which option formatting strings to use
         */
        if (FUNC1(opts)) {
            flen = FUNC10(opts, &pOptTitle);
            FUNC12(line_fmt_buf, zFmtFmt, flen);
            FUNC5(NL, option_usage_fp);
        }
        else {
            flen = FUNC11(opts, &pOptTitle);
            FUNC12(line_fmt_buf, zFmtFmt, flen);

            /*
             *  When we exit with EXIT_SUCCESS and the first option is a doc
             *  option, we do *NOT* want to emit the column headers.
             *  Otherwise, we do.
             */
            if (  (exit_code != EXIT_SUCCESS)
               || ((opts->pOptDesc->fOptState & OPTST_DOCUMENT) == 0) )

                FUNC6(pOptTitle, option_usage_fp);
        }

        flen = 4 - ((flen + 15) / 8);
        if (flen > 0)
            tab_skip_ct = flen;
        FUNC8(opts, exit_code, pOptTitle);
    }

    /*
     *  Describe the mechanics of denoting the options
     */
    switch (opts->fOptSet & OPTPROC_L_N_S) {
    case OPTPROC_L_N_S:     FUNC6(zFlagOkay, option_usage_fp); break;
    case OPTPROC_SHORTOPT:  break;
    case OPTPROC_LONGOPT:   FUNC6(zNoFlags,  option_usage_fp); break;
    case 0:                 FUNC6(zOptsOnly, option_usage_fp); break;
    }

    if ((opts->fOptSet & OPTPROC_NUM_OPT) != 0)
        FUNC6(zNumberOpt, option_usage_fp);

    if ((opts->fOptSet & OPTPROC_REORDER) != 0)
        FUNC6(zReorder, option_usage_fp);

    if (opts->pzExplain != NULL)
        FUNC6(opts->pzExplain, option_usage_fp);

    /*
     *  IF the user is asking for help (thus exiting with SUCCESS),
     *  THEN see what additional information we can provide.
     */
    if (exit_code == EXIT_SUCCESS)
        FUNC9(opts);

    /*
     * Give bug notification preference to the packager information
     */
    if (FUNC0(opts) && (opts->pzPackager != NULL))
        FUNC6(opts->pzPackager, option_usage_fp);

    else if (opts->pzBugAddr != NULL)
        FUNC4(option_usage_fp, zPlsSendBugs, opts->pzBugAddr);

    FUNC3(option_usage_fp);

    if (FUNC2(option_usage_fp) != 0)
        FUNC7(opts->pzProgName, zwriting, (option_usage_fp == stderr)
                   ? zstderr_name : zstdout_name);
}