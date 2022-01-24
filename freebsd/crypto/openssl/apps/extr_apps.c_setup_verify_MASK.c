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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  X509_FILETYPE_DEFAULT ; 
 int /*<<< orphan*/  X509_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  bio_err ; 

X509_STORE *FUNC9(const char *CAfile, const char *CApath, int noCAfile, int noCApath)
{
    X509_STORE *store = FUNC8();
    X509_LOOKUP *lookup;

    if (store == NULL)
        goto end;

    if (CAfile != NULL || !noCAfile) {
        lookup = FUNC6(store, FUNC3());
        if (lookup == NULL)
            goto end;
        if (CAfile) {
            if (!FUNC5(lookup, CAfile, X509_FILETYPE_PEM)) {
                FUNC0(bio_err, "Error loading file %s\n", CAfile);
                goto end;
            }
        } else {
            FUNC5(lookup, NULL, X509_FILETYPE_DEFAULT);
        }
    }

    if (CApath != NULL || !noCApath) {
        lookup = FUNC6(store, FUNC4());
        if (lookup == NULL)
            goto end;
        if (CApath) {
            if (!FUNC2(lookup, CApath, X509_FILETYPE_PEM)) {
                FUNC0(bio_err, "Error loading directory %s\n", CApath);
                goto end;
            }
        } else {
            FUNC2(lookup, NULL, X509_FILETYPE_DEFAULT);
        }
    }

    FUNC1();
    return store;
 end:
    FUNC7(store);
    return NULL;
}