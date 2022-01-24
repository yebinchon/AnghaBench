#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nlevel; TYPE_2__* levels; } ;
typedef  TYPE_1__ X509_POLICY_TREE ;
struct TYPE_12__ {int flags; int /*<<< orphan*/  cert; } ;
typedef  TYPE_2__ X509_POLICY_LEVEL ;
typedef  int /*<<< orphan*/  X509_POLICY_CACHE ;

/* Variables and functions */
 int X509_PCY_TREE_INTERNAL ; 
 int X509_PCY_TREE_VALID ; 
 int X509_V_FLAG_INHIBIT_ANY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(X509_POLICY_TREE *tree)
{
    int ret, i;
    X509_POLICY_LEVEL *curr = tree->levels + 1;
    const X509_POLICY_CACHE *cache;

    for (i = 1; i < tree->nlevel; i++, curr++) {
        cache = FUNC0(curr->cert);
        if (!FUNC2(curr, cache))
            return X509_PCY_TREE_INTERNAL;

        if (!(curr->flags & X509_V_FLAG_INHIBIT_ANY)
            && !FUNC1(curr, cache, tree))
            return X509_PCY_TREE_INTERNAL;
#ifdef OPENSSL_POLICY_DEBUG
        tree_print("before tree_prune()", tree, curr);
#endif
        ret = FUNC4(tree, curr);
        if (ret != X509_PCY_TREE_VALID)
            return ret;
    }
    return X509_PCY_TREE_VALID;
}