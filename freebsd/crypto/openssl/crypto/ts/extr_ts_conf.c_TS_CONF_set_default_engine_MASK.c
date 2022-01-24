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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE_CTRL_CHIL_SET_FORKCHECK ; 
 int /*<<< orphan*/  ENGINE_METHOD_ALL ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  TS_F_TS_CONF_SET_DEFAULT_ENGINE ; 
 int /*<<< orphan*/  TS_R_COULD_NOT_SET_ENGINE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

int FUNC7(const char *name)
{
    ENGINE *e = NULL;
    int ret = 0;

    if (FUNC6(name, "builtin") == 0)
        return 1;

    if ((e = FUNC0(name)) == NULL)
        goto err;
    if (FUNC6(name, "chil") == 0)
        FUNC1(e, ENGINE_CTRL_CHIL_SET_FORKCHECK, 1, 0, 0);
    if (!FUNC3(e, ENGINE_METHOD_ALL))
        goto err;
    ret = 1;

 err:
    if (!ret) {
        FUNC5(TS_F_TS_CONF_SET_DEFAULT_ENGINE, TS_R_COULD_NOT_SET_ENGINE);
        FUNC4(2, "engine:", name);
    }
    FUNC2(e);
    return ret;
}