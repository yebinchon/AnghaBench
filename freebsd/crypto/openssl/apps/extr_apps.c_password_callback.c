
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UI ;
struct TYPE_4__ {char* prompt_info; } ;
typedef TYPE_1__ PW_CB_DATA ;


 int BIO_printf (int ,char*) ;
 int ERR_print_errors (int ) ;
 int OPENSSL_cleanse (char*,unsigned int) ;
 int OPENSSL_clear_free (char*,unsigned int) ;
 int OPENSSL_free (char*) ;
 int PW_MIN_LENGTH ;
 int UI_CTRL_IS_REDOABLE ;
 int UI_CTRL_PRINT_ERRORS ;
 int UI_INPUT_FLAG_DEFAULT_PWD ;
 int UI_add_input_string (int *,char*,int,char*,int ,int) ;
 int UI_add_user_data (int *,TYPE_1__*) ;
 int UI_add_verify_string (int *,char*,int,char*,int ,int,char*) ;
 char* UI_construct_prompt (int *,char*,char const*) ;
 scalar_t__ UI_ctrl (int *,int ,int,int ,int ) ;
 int UI_free (int *) ;
 int * UI_new_method (int ) ;
 int UI_process (int *) ;
 char* app_malloc (int,char*) ;
 int bio_err ;
 int strlen (char*) ;
 int ui_method ;

int password_callback(char *buf, int bufsiz, int verify, PW_CB_DATA *cb_tmp)
{
    int res = 0;
    UI *ui = ((void*)0);
    PW_CB_DATA *cb_data = (PW_CB_DATA *)cb_tmp;

    ui = UI_new_method(ui_method);
    if (ui) {
        int ok = 0;
        char *buff = ((void*)0);
        int ui_flags = 0;
        const char *prompt_info = ((void*)0);
        char *prompt;

        if (cb_data != ((void*)0) && cb_data->prompt_info != ((void*)0))
            prompt_info = cb_data->prompt_info;
        prompt = UI_construct_prompt(ui, "pass phrase", prompt_info);
        if (!prompt) {
            BIO_printf(bio_err, "Out of memory\n");
            UI_free(ui);
            return 0;
        }

        ui_flags |= UI_INPUT_FLAG_DEFAULT_PWD;
        UI_ctrl(ui, UI_CTRL_PRINT_ERRORS, 1, 0, 0);


        (void)UI_add_user_data(ui, cb_data);

        ok = UI_add_input_string(ui, prompt, ui_flags, buf,
                                 PW_MIN_LENGTH, bufsiz - 1);

        if (ok >= 0 && verify) {
            buff = app_malloc(bufsiz, "password buffer");
            ok = UI_add_verify_string(ui, prompt, ui_flags, buff,
                                      PW_MIN_LENGTH, bufsiz - 1, buf);
        }
        if (ok >= 0)
            do {
                ok = UI_process(ui);
            } while (ok < 0 && UI_ctrl(ui, UI_CTRL_IS_REDOABLE, 0, 0, 0));

        OPENSSL_clear_free(buff, (unsigned int)bufsiz);

        if (ok >= 0)
            res = strlen(buf);
        if (ok == -1) {
            BIO_printf(bio_err, "User interface error\n");
            ERR_print_errors(bio_err);
            OPENSSL_cleanse(buf, (unsigned int)bufsiz);
            res = 0;
        }
        if (ok == -2) {
            BIO_printf(bio_err, "aborted!\n");
            OPENSSL_cleanse(buf, (unsigned int)bufsiz);
            res = 0;
        }
        UI_free(ui);
        OPENSSL_free(prompt);
    }
    return res;
}
