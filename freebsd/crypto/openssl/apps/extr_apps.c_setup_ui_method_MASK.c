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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ui_close ; 
 int /*<<< orphan*/  ui_fallback_method ; 
 int /*<<< orphan*/  ui_method ; 
 int /*<<< orphan*/  ui_open ; 
 int /*<<< orphan*/  ui_read ; 
 int /*<<< orphan*/  ui_write ; 

int FUNC7(void)
{
    ui_fallback_method = FUNC6();
#ifndef OPENSSL_NO_UI_CONSOLE
    ui_fallback_method = FUNC0();
#endif
    ui_method = FUNC1("OpenSSL application user interface");
    FUNC3(ui_method, ui_open);
    FUNC4(ui_method, ui_read);
    FUNC5(ui_method, ui_write);
    FUNC2(ui_method, ui_close);
    return 0;
}