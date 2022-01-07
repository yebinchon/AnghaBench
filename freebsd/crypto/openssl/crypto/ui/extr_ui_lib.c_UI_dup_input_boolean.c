
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int UIT_BOOLEAN ;
 int UI_F_UI_DUP_INPUT_BOOLEAN ;
 int UIerr (int ,int ) ;
 int general_allocate_boolean (int *,char*,char*,char*,char*,int,int ,int,char*) ;

int UI_dup_input_boolean(UI *ui, const char *prompt, const char *action_desc,
                         const char *ok_chars, const char *cancel_chars,
                         int flags, char *result_buf)
{
    char *prompt_copy = ((void*)0);
    char *action_desc_copy = ((void*)0);
    char *ok_chars_copy = ((void*)0);
    char *cancel_chars_copy = ((void*)0);

    if (prompt != ((void*)0)) {
        prompt_copy = OPENSSL_strdup(prompt);
        if (prompt_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if (action_desc != ((void*)0)) {
        action_desc_copy = OPENSSL_strdup(action_desc);
        if (action_desc_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if (ok_chars != ((void*)0)) {
        ok_chars_copy = OPENSSL_strdup(ok_chars);
        if (ok_chars_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if (cancel_chars != ((void*)0)) {
        cancel_chars_copy = OPENSSL_strdup(cancel_chars);
        if (cancel_chars_copy == ((void*)0)) {
            UIerr(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    return general_allocate_boolean(ui, prompt_copy, action_desc_copy,
                                    ok_chars_copy, cancel_chars_copy, 1,
                                    UIT_BOOLEAN, flags, result_buf);
 err:
    OPENSSL_free(prompt_copy);
    OPENSSL_free(action_desc_copy);
    OPENSSL_free(ok_chars_copy);
    OPENSSL_free(cancel_chars_copy);
    return -1;
}
