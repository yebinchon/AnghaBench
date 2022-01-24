#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* name; int /*<<< orphan*/  ex_data; } ;
typedef  TYPE_1__ UI_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_UI_METHOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(UI_METHOD *ui_method)
{
    if (ui_method == NULL)
        return;
    FUNC0(CRYPTO_EX_INDEX_UI_METHOD, ui_method,
                        &ui_method->ex_data);
    FUNC1(ui_method->name);
    ui_method->name = NULL;
    FUNC1(ui_method);
}