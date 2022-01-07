
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum UI_string_types { ____Placeholder_UI_string_types } UI_string_types ;
struct TYPE_4__ {char const* out_string; int input_flags; int type; char* result_buf; int flags; } ;
typedef TYPE_1__ UI_STRING ;
typedef int UI ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int OUT_STRING_FREEABLE ;
 int UIT_BOOLEAN ;
 int UIT_PROMPT ;
 int UIT_VERIFY ;
 int UI_F_GENERAL_ALLOCATE_PROMPT ;
 int UI_R_NO_RESULT_BUFFER ;
 int UIerr (int ,int ) ;

__attribute__((used)) static UI_STRING *general_allocate_prompt(UI *ui, const char *prompt,
                                          int prompt_freeable,
                                          enum UI_string_types type,
                                          int input_flags, char *result_buf)
{
    UI_STRING *ret = ((void*)0);

    if (prompt == ((void*)0)) {
        UIerr(UI_F_GENERAL_ALLOCATE_PROMPT, ERR_R_PASSED_NULL_PARAMETER);
    } else if ((type == UIT_PROMPT || type == UIT_VERIFY
                || type == UIT_BOOLEAN) && result_buf == ((void*)0)) {
        UIerr(UI_F_GENERAL_ALLOCATE_PROMPT, UI_R_NO_RESULT_BUFFER);
    } else if ((ret = OPENSSL_malloc(sizeof(*ret))) != ((void*)0)) {
        ret->out_string = prompt;
        ret->flags = prompt_freeable ? OUT_STRING_FREEABLE : 0;
        ret->input_flags = input_flags;
        ret->type = type;
        ret->result_buf = result_buf;
    }
    return ret;
}
