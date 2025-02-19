
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef enum UI_string_types { ____Placeholder_UI_string_types } UI_string_types ;
struct TYPE_11__ {int result_minsize; int result_maxsize; char const* test_buf; } ;
struct TYPE_12__ {TYPE_1__ string_data; } ;
struct TYPE_13__ {TYPE_2__ _; } ;
typedef TYPE_3__ UI_STRING ;
struct TYPE_14__ {int strings; } ;
typedef TYPE_4__ UI ;


 scalar_t__ allocate_string_stack (TYPE_4__*) ;
 int free_string (TYPE_3__*) ;
 TYPE_3__* general_allocate_prompt (TYPE_4__*,char const*,int,int,int,char*) ;
 int sk_UI_STRING_push (int ,TYPE_3__*) ;

__attribute__((used)) static int general_allocate_string(UI *ui, const char *prompt,
                                   int prompt_freeable,
                                   enum UI_string_types type, int input_flags,
                                   char *result_buf, int minsize, int maxsize,
                                   const char *test_buf)
{
    int ret = -1;
    UI_STRING *s = general_allocate_prompt(ui, prompt, prompt_freeable,
                                           type, input_flags, result_buf);

    if (s != ((void*)0)) {
        if (allocate_string_stack(ui) >= 0) {
            s->_.string_data.result_minsize = minsize;
            s->_.string_data.result_maxsize = maxsize;
            s->_.string_data.test_buf = test_buf;
            ret = sk_UI_STRING_push(ui->strings, s);

            if (ret <= 0) {
                ret--;
                free_string(s);
            }
        } else
            free_string(s);
    }
    return ret;
}
