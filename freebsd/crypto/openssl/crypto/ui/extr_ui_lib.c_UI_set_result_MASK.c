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
typedef  int /*<<< orphan*/  UI_STRING ;
typedef  int /*<<< orphan*/  UI ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_DISABLED ; 
 int /*<<< orphan*/  UI_F_UI_SET_RESULT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(UI *ui, UI_STRING *uis, const char *result)
{
#if 0
    /*
     * This is placed here solely to preserve UI_F_UI_SET_RESULT
     * To be removed for OpenSSL 1.2.0
     */
    UIerr(UI_F_UI_SET_RESULT, ERR_R_DISABLED);
#endif
    return FUNC0(ui, uis, result, FUNC2(result));
}