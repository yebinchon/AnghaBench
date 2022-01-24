#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509_LOOKUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  X509_FILETYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(X509_STORE *ctx)
{
    X509_LOOKUP *lookup;

    lookup = FUNC5(ctx, FUNC2());
    if (lookup == NULL)
        return 0;
    FUNC4(lookup, NULL, X509_FILETYPE_DEFAULT);

    lookup = FUNC5(ctx, FUNC3());
    if (lookup == NULL)
        return 0;
    FUNC1(lookup, NULL, X509_FILETYPE_DEFAULT);

    /* clear any errors */
    FUNC0();

    return 1;
}