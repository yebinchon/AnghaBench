#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_6__* base; scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_9__ {int /*<<< orphan*/  excludedSubtrees; int /*<<< orphan*/  permittedSubtrees; } ;
typedef  TYPE_1__ NAME_CONSTRAINTS ;
typedef  TYPE_2__ GENERAL_SUBTREE ;
typedef  TYPE_3__ GENERAL_NAME ;

/* Variables and functions */
 int X509_V_ERR_EXCLUDED_VIOLATION ; 
 int X509_V_ERR_PERMITTED_VIOLATION ; 
 int X509_V_ERR_SUBTREE_MINMAX ; 
 int X509_V_OK ; 
 int FUNC0 (TYPE_3__*,TYPE_6__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(GENERAL_NAME *gen, NAME_CONSTRAINTS *nc)
{
    GENERAL_SUBTREE *sub;
    int i, r, match = 0;

    /*
     * Permitted subtrees: if any subtrees exist of matching the type at
     * least one subtree must match.
     */

    for (i = 0; i < FUNC1(nc->permittedSubtrees); i++) {
        sub = FUNC2(nc->permittedSubtrees, i);
        if (gen->type != sub->base->type)
            continue;
        if (sub->minimum || sub->maximum)
            return X509_V_ERR_SUBTREE_MINMAX;
        /* If we already have a match don't bother trying any more */
        if (match == 2)
            continue;
        if (match == 0)
            match = 1;
        r = FUNC0(gen, sub->base);
        if (r == X509_V_OK)
            match = 2;
        else if (r != X509_V_ERR_PERMITTED_VIOLATION)
            return r;
    }

    if (match == 1)
        return X509_V_ERR_PERMITTED_VIOLATION;

    /* Excluded subtrees: must not match any of these */

    for (i = 0; i < FUNC1(nc->excludedSubtrees); i++) {
        sub = FUNC2(nc->excludedSubtrees, i);
        if (gen->type != sub->base->type)
            continue;
        if (sub->minimum || sub->maximum)
            return X509_V_ERR_SUBTREE_MINMAX;

        r = FUNC0(gen, sub->base);
        if (r == X509_V_OK)
            return X509_V_ERR_EXCLUDED_VIOLATION;
        else if (r != X509_V_ERR_PERMITTED_VIOLATION)
            return r;

    }

    return X509_V_OK;

}