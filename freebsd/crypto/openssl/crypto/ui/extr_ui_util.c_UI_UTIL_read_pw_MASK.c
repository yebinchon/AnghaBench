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
typedef  int /*<<< orphan*/  UI ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(char *buf, char *buff, int size, const char *prompt,
                    int verify)
{
    int ok = 0;
    UI *ui;

    if (size < 1)
        return -1;

    ui = FUNC3();
    if (ui != NULL) {
        ok = FUNC0(ui, prompt, 0, buf, 0, size - 1);
        if (ok >= 0 && verify)
            ok = FUNC1(ui, prompt, 0, buff, 0, size - 1, buf);
        if (ok >= 0)
            ok = FUNC4(ui);
        FUNC2(ui);
    }
    if (ok > 0)
        ok = 0;
    return ok;
}