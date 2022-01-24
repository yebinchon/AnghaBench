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
typedef  int /*<<< orphan*/  X509_POLICY_TREE ;
typedef  int /*<<< orphan*/  X509_POLICY_NODE ;
struct TYPE_8__ {scalar_t__ anyPolicy; int /*<<< orphan*/  nodes; } ;
typedef  TYPE_1__ X509_POLICY_LEVEL ;
struct TYPE_9__ {int /*<<< orphan*/  anyPolicy; } ;
typedef  TYPE_2__ X509_POLICY_CACHE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(X509_POLICY_LEVEL *curr,
                         const X509_POLICY_CACHE *cache,
                         X509_POLICY_TREE *tree)
{
    int i;
    X509_POLICY_NODE *node;
    X509_POLICY_LEVEL *last = curr - 1;

    for (i = 0; i < FUNC1(last->nodes); i++) {
        node = FUNC2(last->nodes, i);

        if (!FUNC3(curr, cache, node, tree))
            return 0;
    }
    /* Finally add link to anyPolicy */
    if (last->anyPolicy &&
        FUNC0(curr, cache->anyPolicy, last->anyPolicy, NULL) == NULL)
        return 0;
    return 1;
}