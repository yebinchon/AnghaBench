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
typedef  int /*<<< orphan*/  UI_METHOD ;
typedef  int /*<<< orphan*/  UI ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_UI_LIB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OSSL_STORE_F_FILE_GET_PASS ; 
 int /*<<< orphan*/  OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UI_INPUT_FLAG_DEFAULT_PWD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static char *FUNC9(const UI_METHOD *ui_method, char *pass,
                           size_t maxsize, const char *prompt_info, void *data)
{
    UI *ui = FUNC6();
    char *prompt = NULL;

    if (ui == NULL) {
        FUNC1(OSSL_STORE_F_FILE_GET_PASS, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (ui_method != NULL)
        FUNC8(ui, ui_method);
    FUNC3(ui, data);

    if ((prompt = FUNC4(ui, "pass phrase",
                                      prompt_info)) == NULL) {
        FUNC1(OSSL_STORE_F_FILE_GET_PASS, ERR_R_MALLOC_FAILURE);
        pass = NULL;
    } else if (!FUNC2(ui, prompt, UI_INPUT_FLAG_DEFAULT_PWD,
                                    pass, 0, maxsize - 1)) {
        FUNC1(OSSL_STORE_F_FILE_GET_PASS, ERR_R_UI_LIB);
        pass = NULL;
    } else {
        switch (FUNC7(ui)) {
        case -2:
            FUNC1(OSSL_STORE_F_FILE_GET_PASS,
                          OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED);
            pass = NULL;
            break;
        case -1:
            FUNC1(OSSL_STORE_F_FILE_GET_PASS, ERR_R_UI_LIB);
            pass = NULL;
            break;
        default:
            break;
        }
    }

    FUNC0(prompt);
    FUNC5(ui);
    return pass;
}