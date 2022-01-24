#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int fOptSet; int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_2__ tOptions ;
struct TYPE_11__ {int* argString; } ;
struct TYPE_13__ {int fOptState; TYPE_1__ optArg; } ;
typedef  TYPE_3__ tOptDesc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
#define  NUL 128 
 TYPE_2__* OPTPROC_EMIT_LIMIT ; 
 int OPTPROC_GNUUSAGE ; 
 int OPTST_ARG_OPTIONAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 char* zBadVerArg ; 
 int /*<<< orphan*/  zstderr_name ; 
 int /*<<< orphan*/  zstdout_name ; 
 int /*<<< orphan*/  zwriting ; 

__attribute__((used)) static void
FUNC9(tOptions * opts, tOptDesc * od, FILE * fp, bool call_exit)
{
    char ch;

    if (opts <= OPTPROC_EMIT_LIMIT)
        return;

    /*
     *  IF we have an argument for this option, use it
     *  Otherwise, default to version only or copyright note,
     *  depending on whether the layout is GNU standard form or not.
     */
    if (  (od->fOptState & OPTST_ARG_OPTIONAL)
       && (od->optArg.argString != NULL)
       && (od->optArg.argString[0] != NUL))

        ch = od->optArg.argString[0];

    else {
        FUNC8(opts, NULL);
        ch = (opts->fOptSet & OPTPROC_GNUUSAGE) ? 'c' : 'v';
    }

    switch (ch) {
    case NUL: /* arg provided, but empty */
    case 'v': case 'V': FUNC2(opts, fp); break;
    case 'c': case 'C': FUNC0( opts, fp); break;
    case 'n': case 'N': FUNC1( opts, fp); break;

    default:
        FUNC5(stderr, zBadVerArg, ch);
        FUNC7(EXIT_FAILURE);
    }

    FUNC4(fp);
    if (FUNC3(fp))
        FUNC6(opts->pzProgName, zwriting,
                   (fp == stdout) ? zstdout_name : zstderr_name);

    if (call_exit)
        FUNC7(EXIT_SUCCESS);
}