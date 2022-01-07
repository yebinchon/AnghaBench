
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_METHOD ;
typedef int UI ;


 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_UI_LIB ;
 int OPENSSL_free (char*) ;
 int OSSL_STORE_F_FILE_GET_PASS ;
 int OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED ;
 int OSSL_STOREerr (int ,int ) ;
 int UI_INPUT_FLAG_DEFAULT_PWD ;
 int UI_add_input_string (int *,char*,int ,char*,int ,size_t) ;
 int UI_add_user_data (int *,void*) ;
 char* UI_construct_prompt (int *,char*,char const*) ;
 int UI_free (int *) ;
 int * UI_new () ;
 int UI_process (int *) ;
 int UI_set_method (int *,int const*) ;

__attribute__((used)) static char *file_get_pass(const UI_METHOD *ui_method, char *pass,
                           size_t maxsize, const char *prompt_info, void *data)
{
    UI *ui = UI_new();
    char *prompt = ((void*)0);

    if (ui == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_FILE_GET_PASS, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (ui_method != ((void*)0))
        UI_set_method(ui, ui_method);
    UI_add_user_data(ui, data);

    if ((prompt = UI_construct_prompt(ui, "pass phrase",
                                      prompt_info)) == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_FILE_GET_PASS, ERR_R_MALLOC_FAILURE);
        pass = ((void*)0);
    } else if (!UI_add_input_string(ui, prompt, UI_INPUT_FLAG_DEFAULT_PWD,
                                    pass, 0, maxsize - 1)) {
        OSSL_STOREerr(OSSL_STORE_F_FILE_GET_PASS, ERR_R_UI_LIB);
        pass = ((void*)0);
    } else {
        switch (UI_process(ui)) {
        case -2:
            OSSL_STOREerr(OSSL_STORE_F_FILE_GET_PASS,
                          OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED);
            pass = ((void*)0);
            break;
        case -1:
            OSSL_STOREerr(OSSL_STORE_F_FILE_GET_PASS, ERR_R_UI_LIB);
            pass = ((void*)0);
            break;
        default:
            break;
        }
    }

    OPENSSL_free(prompt);
    UI_free(ui);
    return pass;
}
