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
typedef  int /*<<< orphan*/  X509_LOOKUP ;

/* Variables and functions */
 long X509_FILETYPE_DEFAULT ; 
 long X509_FILETYPE_PEM ; 
 int /*<<< orphan*/  X509_F_BY_FILE_CTRL ; 
#define  X509_L_FILE_LOAD 128 
 int /*<<< orphan*/  X509_R_LOADING_DEFAULTS ; 
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(X509_LOOKUP *ctx, int cmd, const char *argp,
                        long argl, char **ret)
{
    int ok = 0;
    const char *file;

    switch (cmd) {
    case X509_L_FILE_LOAD:
        if (argl == X509_FILETYPE_DEFAULT) {
            file = FUNC5(FUNC1());
            if (file)
                ok = (FUNC2(ctx, file,
                                              X509_FILETYPE_PEM) != 0);

            else
                ok = (FUNC2
                      (ctx, FUNC0(),
                       X509_FILETYPE_PEM) != 0);

            if (!ok) {
                FUNC4(X509_F_BY_FILE_CTRL, X509_R_LOADING_DEFAULTS);
            }
        } else {
            if (argl == X509_FILETYPE_PEM)
                ok = (FUNC2(ctx, argp,
                                              X509_FILETYPE_PEM) != 0);
            else
                ok = (FUNC3(ctx, argp, (int)argl) != 0);
        }
        break;
    }
    return ok;
}