#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UI ;
struct TYPE_4__ {char* prompt_info; } ;
typedef  TYPE_1__ PW_CB_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  PW_MIN_LENGTH ; 
 int /*<<< orphan*/  UI_CTRL_IS_REDOABLE ; 
 int /*<<< orphan*/  UI_CTRL_PRINT_ERRORS ; 
 int UI_INPUT_FLAG_DEFAULT_PWD ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int,char*,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  ui_method ; 

int FUNC15(char *buf, int bufsiz, int verify, PW_CB_DATA *cb_tmp)
{
    int res = 0;
    UI *ui = NULL;
    PW_CB_DATA *cb_data = (PW_CB_DATA *)cb_tmp;

    ui = FUNC11(ui_method);
    if (ui) {
        int ok = 0;
        char *buff = NULL;
        int ui_flags = 0;
        const char *prompt_info = NULL;
        char *prompt;

        if (cb_data != NULL && cb_data->prompt_info != NULL)
            prompt_info = cb_data->prompt_info;
        prompt = FUNC8(ui, "pass phrase", prompt_info);
        if (!prompt) {
            FUNC0(bio_err, "Out of memory\n");
            FUNC10(ui);
            return 0;
        }

        ui_flags |= UI_INPUT_FLAG_DEFAULT_PWD;
        FUNC9(ui, UI_CTRL_PRINT_ERRORS, 1, 0, 0);

        /* We know that there is no previous user data to return to us */
        (void)FUNC6(ui, cb_data);

        ok = FUNC5(ui, prompt, ui_flags, buf,
                                 PW_MIN_LENGTH, bufsiz - 1);

        if (ok >= 0 && verify) {
            buff = FUNC13(bufsiz, "password buffer");
            ok = FUNC7(ui, prompt, ui_flags, buff,
                                      PW_MIN_LENGTH, bufsiz - 1, buf);
        }
        if (ok >= 0)
            do {
                ok = FUNC12(ui);
            } while (ok < 0 && FUNC9(ui, UI_CTRL_IS_REDOABLE, 0, 0, 0));

        FUNC3(buff, (unsigned int)bufsiz);

        if (ok >= 0)
            res = FUNC14(buf);
        if (ok == -1) {
            FUNC0(bio_err, "User interface error\n");
            FUNC1(bio_err);
            FUNC2(buf, (unsigned int)bufsiz);
            res = 0;
        }
        if (ok == -2) {
            FUNC0(bio_err, "aborted!\n");
            FUNC2(buf, (unsigned int)bufsiz);
            res = 0;
        }
        FUNC10(ui);
        FUNC4(prompt);
    }
    return res;
}