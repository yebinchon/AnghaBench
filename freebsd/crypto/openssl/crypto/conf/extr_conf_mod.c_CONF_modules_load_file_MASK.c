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
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 unsigned long CONF_MFLAGS_IGNORE_MISSING_FILE ; 
 unsigned long CONF_MFLAGS_IGNORE_RETURN_CODES ; 
 scalar_t__ CONF_R_NO_SUCH_FILE ; 
 char* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(const char *filename, const char *appname,
                           unsigned long flags)
{
    char *file = NULL;
    CONF *conf = NULL;
    int ret = 0;
    conf = FUNC7(NULL);
    if (conf == NULL)
        goto err;

    if (filename == NULL) {
        file = FUNC0();
        if (!file)
            goto err;
    } else
        file = (char *)filename;

    if (FUNC6(conf, file, NULL) <= 0) {
        if ((flags & CONF_MFLAGS_IGNORE_MISSING_FILE) &&
            (FUNC2(FUNC4()) == CONF_R_NO_SUCH_FILE)) {
            FUNC3();
            ret = 1;
        }
        goto err;
    }

    ret = FUNC1(conf, appname, flags);

 err:
    if (filename == NULL)
        FUNC8(file);
    FUNC5(conf);

    if (flags & CONF_MFLAGS_IGNORE_RETURN_CODES)
        return 1;

    return ret;
}