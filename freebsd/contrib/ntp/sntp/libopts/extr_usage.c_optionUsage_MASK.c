#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int structVersion; char* pzFullUsage; char* pzShortUsage; int fOptSet; char* pzUsageTitle; int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_1__ tOptions ;

/* Variables and functions */
 int AO_EXIT_REQ_USAGE ; 
 int EXIT_SUCCESS ; 
 int OPTPROC_COMPUTE ; 
 int OPTPROC_TRANSLATE ; 
 int displayEnum ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * option_usage_fp ; 
 scalar_t__ print_exit ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  zstderr_name ; 
 int /*<<< orphan*/  zstdout_name ; 
 int /*<<< orphan*/  zwriting ; 

void
FUNC11(tOptions * opts, int usage_exit_code)
{
    int exit_code = (usage_exit_code == AO_EXIT_REQ_USAGE)
        ? EXIT_SUCCESS : usage_exit_code;

    displayEnum = false;
    FUNC9(opts, NULL);

    /*
     *  Paged usage will preset option_usage_fp to an output file.
     *  If it hasn't already been set, then set it to standard output
     *  on successful exit (help was requested), otherwise error out.
     *
     *  Test the version before obtaining pzFullUsage or pzShortUsage.
     *  These fields do not exist before revision 30.
     */
    {
        char const * pz;

        if (exit_code == EXIT_SUCCESS) {
            pz = (opts->structVersion >= 30 * 4096)
                ? opts->pzFullUsage : NULL;

            if (option_usage_fp == NULL)
                option_usage_fp = print_exit ? stderr : stdout;

        } else {
            pz = (opts->structVersion >= 30 * 4096)
                ? opts->pzShortUsage : NULL;

            if (option_usage_fp == NULL)
                option_usage_fp = stderr;
        }

        if (((opts->fOptSet & OPTPROC_COMPUTE) == 0) && (pz != NULL)) {
            if ((opts->fOptSet & OPTPROC_TRANSLATE) != 0)
                FUNC5(pz, true, option_usage_fp);
            else
                FUNC3(pz, option_usage_fp);
            goto flush_and_exit;
        }
    }

    FUNC2(option_usage_fp, opts->pzUsageTitle, opts->pzProgName);

    if ((exit_code == EXIT_SUCCESS) ||
        (! FUNC10(opts)))

        FUNC8(opts, usage_exit_code);
    else
        FUNC7(opts);
    
 flush_and_exit:
    FUNC1(option_usage_fp);
    if (FUNC0(option_usage_fp) != 0)
        FUNC4(opts->pzProgName, zwriting, (option_usage_fp == stdout)
                   ? zstdout_name : zstderr_name);

    FUNC6(exit_code);
}