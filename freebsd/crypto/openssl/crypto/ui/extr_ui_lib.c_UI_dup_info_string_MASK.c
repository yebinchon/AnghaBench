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
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  UIT_INFO ; 
 int /*<<< orphan*/  UI_F_UI_DUP_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(UI *ui, const char *text)
{
    char *text_copy = NULL;

    if (text != NULL) {
        text_copy = FUNC0(text);
        if (text_copy == NULL) {
            FUNC1(UI_F_UI_DUP_INFO_STRING, ERR_R_MALLOC_FAILURE);
            return -1;
        }
    }

    return FUNC2(ui, text_copy, 1, UIT_INFO, 0, NULL,
                                   0, 0, NULL);
}