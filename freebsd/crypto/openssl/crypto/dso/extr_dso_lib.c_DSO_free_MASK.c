#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; int /*<<< orphan*/  lock; struct TYPE_9__* loaded_filename; struct TYPE_9__* filename; int /*<<< orphan*/  meth_data; TYPE_1__* meth; int /*<<< orphan*/  references; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* finish ) (TYPE_2__*) ;int /*<<< orphan*/  (* dso_unload ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ DSO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DSO_FLAG_NO_UNLOAD_ON_FREE ; 
 int /*<<< orphan*/  DSO_F_DSO_FREE ; 
 int /*<<< orphan*/  DSO_R_FINISH_FAILED ; 
 int /*<<< orphan*/  DSO_R_UNLOAD_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int FUNC9(DSO *dso)
{
    int i;

    if (dso == NULL)
        return 1;

    if (FUNC0(&dso->references, &i, dso->lock) <= 0)
        return 0;

    FUNC5("DSO", dso);
    if (i > 0)
        return 1;
    FUNC4(i < 0);

    if ((dso->flags & DSO_FLAG_NO_UNLOAD_ON_FREE) == 0) {
        if ((dso->meth->dso_unload != NULL) && !dso->meth->dso_unload(dso)) {
            FUNC2(DSO_F_DSO_FREE, DSO_R_UNLOAD_FAILED);
            return 0;
        }
    }

    if ((dso->meth->finish != NULL) && !dso->meth->finish(dso)) {
        FUNC2(DSO_F_DSO_FREE, DSO_R_FINISH_FAILED);
        return 0;
    }

    FUNC6(dso->meth_data);
    FUNC3(dso->filename);
    FUNC3(dso->loaded_filename);
    FUNC1(dso->lock);
    FUNC3(dso);
    return 1;
}