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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(CONF *conf, char *p)
{
    for (;;) {
        if (FUNC4(conf, *p)) {
            *p = '\0';
            return;
        }
        if (!FUNC6(conf, *p)) {
            break;
        }
        p++;
    }

    for (;;) {
        if (FUNC0(conf, *p)) {
            *p = '\0';
            return;
        }
        if (FUNC1(conf, *p)) {
            p = FUNC7(conf, p);
            continue;
        }
        if (FUNC5(conf, *p)) {
            p = FUNC9(conf, p);
            continue;
        }
        if (FUNC3(conf, *p)) {
            p = FUNC8(conf, p);
            continue;
        }
        if (FUNC2(conf, *p))
            return;
        else
            p++;
    }
}