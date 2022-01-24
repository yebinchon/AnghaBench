#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  prompt3 ;
typedef  int /*<<< orphan*/  prompt2 ;
typedef  int /*<<< orphan*/  prompt1 ;
struct TYPE_6__ {TYPE_1__* meth; } ;
typedef  TYPE_2__ UI ;
struct TYPE_5__ {char* (* ui_construct_prompt ) (TYPE_2__*,char const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  UI_F_UI_CONSTRUCT_PROMPT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (TYPE_2__*,char const*,char const*) ; 

char *FUNC6(UI *ui, const char *object_desc,
                          const char *object_name)
{
    char *prompt = NULL;

    if (ui->meth->ui_construct_prompt != NULL)
        prompt = ui->meth->ui_construct_prompt(ui, object_desc, object_name);
    else {
        char prompt1[] = "Enter ";
        char prompt2[] = " for ";
        char prompt3[] = ":";
        int len = 0;

        if (object_desc == NULL)
            return NULL;
        len = sizeof(prompt1) - 1 + FUNC4(object_desc);
        if (object_name != NULL)
            len += sizeof(prompt2) - 1 + FUNC4(object_name);
        len += sizeof(prompt3) - 1;

        if ((prompt = FUNC0(len + 1)) == NULL) {
            FUNC3(UI_F_UI_CONSTRUCT_PROMPT, ERR_R_MALLOC_FAILURE);
            return NULL;
        }
        FUNC2(prompt, prompt1, len + 1);
        FUNC1(prompt, object_desc, len + 1);
        if (object_name != NULL) {
            FUNC1(prompt, prompt2, len + 1);
            FUNC1(prompt, object_name, len + 1);
        }
        FUNC1(prompt, prompt3, len + 1);
    }
    return prompt;
}