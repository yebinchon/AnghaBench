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
struct TYPE_4__ {int /*<<< orphan*/ * pzBugAddr; int /*<<< orphan*/ * pzPackager; int /*<<< orphan*/ * pzCopyNotice; int /*<<< orphan*/ * pzCopyright; } ;
typedef  TYPE_1__ tOptions ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 char* zPlsSendBugs ; 
 char* zao_ver_fmt ; 

__attribute__((used)) static void
FUNC5(tOptions * opts, FILE * fp)
{
    if (opts->pzCopyright != NULL)
        FUNC3(opts->pzCopyright, fp);

    if (opts->pzCopyNotice != NULL)
        FUNC3(opts->pzCopyNotice, fp);

    FUNC2(NL, fp);
    FUNC1(fp, zao_ver_fmt, FUNC4());
    
    if (FUNC0(opts) && (opts->pzPackager != NULL)) {
        FUNC2(NL, fp);
        FUNC3(opts->pzPackager, fp);

    } else if (opts->pzBugAddr != NULL) {
        FUNC2(NL, fp);
        FUNC1(fp, zPlsSendBugs, opts->pzBugAddr);
    }
}