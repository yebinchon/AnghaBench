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
 int /*<<< orphan*/  X509_FILETYPE_PEM ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(X509_STORE *ctx, const char *file,
                              const char *path)
{
    X509_LOOKUP *lookup;

    if (file != NULL) {
        lookup = FUNC4(ctx, FUNC1());
        if (lookup == NULL)
            return 0;
        if (FUNC3(lookup, file, X509_FILETYPE_PEM) != 1)
            return 0;
    }
    if (path != NULL) {
        lookup = FUNC4(ctx, FUNC2());
        if (lookup == NULL)
            return 0;
        if (FUNC0(lookup, path, X509_FILETYPE_PEM) != 1)
            return 0;
    }
    if ((path == NULL) && (file == NULL))
        return 0;
    return 1;
}