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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ENGINE_CTRL_SET_LOGSTREAM ; 
 int /*<<< orphan*/  ENGINE_METHOD_ALL ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char const* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 int /*<<< orphan*/  ui_method ; 

ENGINE *FUNC11(const char *engine, int debug)
{
    ENGINE *e = NULL;

#ifndef OPENSSL_NO_ENGINE
    if (engine != NULL) {
        if (FUNC9(engine, "auto") == 0) {
            FUNC0(bio_err, "enabling auto ENGINE support\n");
            FUNC6();
            return NULL;
        }
        if ((e = FUNC1(engine)) == NULL
            && (e = FUNC10(engine)) == NULL) {
            FUNC0(bio_err, "invalid engine \"%s\"\n", engine);
            FUNC8(bio_err);
            return NULL;
        }
        if (debug) {
            FUNC2(e, ENGINE_CTRL_SET_LOGSTREAM, 0, bio_err, 0);
        }
        FUNC3(e, "SET_USER_INTERFACE", 0, ui_method, 0, 1);
        if (!FUNC7(e, ENGINE_METHOD_ALL)) {
            FUNC0(bio_err, "can't use that engine\n");
            FUNC8(bio_err);
            FUNC4(e);
            return NULL;
        }

        FUNC0(bio_err, "engine \"%s\" set.\n", FUNC5(e));
    }
#endif
    return e;
}