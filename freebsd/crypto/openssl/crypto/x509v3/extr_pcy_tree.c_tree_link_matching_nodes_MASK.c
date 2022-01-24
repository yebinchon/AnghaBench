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
typedef  int /*<<< orphan*/  X509_POLICY_NODE ;
struct TYPE_8__ {int /*<<< orphan*/ * anyPolicy; int /*<<< orphan*/  nodes; } ;
typedef  TYPE_1__ X509_POLICY_LEVEL ;
struct TYPE_9__ {int /*<<< orphan*/  valid_policy; } ;
typedef  TYPE_2__ X509_POLICY_DATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(X509_POLICY_LEVEL *curr,
                                    X509_POLICY_DATA *data)
{
    X509_POLICY_LEVEL *last = curr - 1;
    int i, matched = 0;

    /* Iterate through all in nodes linking matches */
    for (i = 0; i < FUNC2(last->nodes); i++) {
        X509_POLICY_NODE *node = FUNC3(last->nodes, i);

        if (FUNC1(last, node, data->valid_policy)) {
            if (FUNC0(curr, data, node, NULL) == NULL)
                return 0;
            matched = 1;
        }
    }
    if (!matched && last->anyPolicy) {
        if (FUNC0(curr, data, last->anyPolicy, NULL) == NULL)
            return 0;
    }
    return 1;
}