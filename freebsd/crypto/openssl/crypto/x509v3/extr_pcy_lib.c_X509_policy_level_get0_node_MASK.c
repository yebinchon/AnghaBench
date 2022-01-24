#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_POLICY_NODE ;
struct TYPE_3__ {int /*<<< orphan*/  nodes; int /*<<< orphan*/ * anyPolicy; } ;
typedef  TYPE_1__ X509_POLICY_LEVEL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 

X509_POLICY_NODE *FUNC1(X509_POLICY_LEVEL *level, int i)
{
    if (!level)
        return NULL;
    if (level->anyPolicy) {
        if (i == 0)
            return level->anyPolicy;
        i--;
    }
    return FUNC0(level->nodes, i);
}