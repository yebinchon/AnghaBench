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
struct TYPE_4__ {int /*<<< orphan*/ * pzBugAddr; int /*<<< orphan*/ * pzPackager; int /*<<< orphan*/  pzUsageTitle; int /*<<< orphan*/ * pzFullVersion; int /*<<< orphan*/ * pzCopyright; } ;
typedef  TYPE_1__ tOptions ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* zPlsSendBugs ; 

__attribute__((used)) static void
FUNC5(tOptions * o, FILE * fp)
{
    if (o->pzCopyright != NULL)
        FUNC4(o->pzCopyright, fp);

    else if (o->pzFullVersion != NULL)
        FUNC4(o->pzFullVersion, fp);

    else
        FUNC1(fp, o->pzUsageTitle, NULL, NULL);
    
    if (FUNC0(o) && (o->pzPackager != NULL)) {
        FUNC3(NL, fp);
        FUNC4(o->pzPackager, fp);

    } else if (o->pzBugAddr != NULL) {
        FUNC3(NL, fp);
        FUNC2(fp, zPlsSendBugs, o->pzBugAddr);
    }
}