#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int columns; int /*<<< orphan*/  width; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/ * name; } ;
typedef  scalar_t__ FUNC_TYPE ;
typedef  TYPE_1__ FUNCTION ;
typedef  TYPE_2__ DISPLAY_COLUMNS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* functions ; 

__attribute__((used)) static void FUNC2(FUNC_TYPE ft, int one)
{
    FUNCTION *fp;
    int i = 0;
    DISPLAY_COLUMNS dc = {0};

    if (!one)
        FUNC1(&dc);

    for (fp = functions; fp->name != NULL; fp++) {
        if (fp->type != ft)
            continue;
        if (one) {
            FUNC0(bio_out, "%s\n", fp->name);
        } else {
            if (i % dc.columns == 0 && i > 0)
                FUNC0(bio_out, "\n");
            FUNC0(bio_out, "%-*s", dc.width, fp->name);
            i++;
        }
    }
    if (!one)
        FUNC0(bio_out, "\n\n");
}