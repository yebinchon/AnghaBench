
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int prompt3 ;
typedef int prompt2 ;
typedef int prompt1 ;
struct TYPE_6__ {TYPE_1__* meth; } ;
typedef TYPE_2__ UI ;
struct TYPE_5__ {char* (* ui_construct_prompt ) (TYPE_2__*,char const*,char const*) ;} ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_malloc (int) ;
 int OPENSSL_strlcat (char*,char const*,int) ;
 int OPENSSL_strlcpy (char*,char*,int) ;
 int UI_F_UI_CONSTRUCT_PROMPT ;
 int UIerr (int ,int ) ;
 int strlen (char const*) ;
 char* stub1 (TYPE_2__*,char const*,char const*) ;

char *UI_construct_prompt(UI *ui, const char *object_desc,
                          const char *object_name)
{
    char *prompt = ((void*)0);

    if (ui->meth->ui_construct_prompt != ((void*)0))
        prompt = ui->meth->ui_construct_prompt(ui, object_desc, object_name);
    else {
        char prompt1[] = "Enter ";
        char prompt2[] = " for ";
        char prompt3[] = ":";
        int len = 0;

        if (object_desc == ((void*)0))
            return ((void*)0);
        len = sizeof(prompt1) - 1 + strlen(object_desc);
        if (object_name != ((void*)0))
            len += sizeof(prompt2) - 1 + strlen(object_name);
        len += sizeof(prompt3) - 1;

        if ((prompt = OPENSSL_malloc(len + 1)) == ((void*)0)) {
            UIerr(UI_F_UI_CONSTRUCT_PROMPT, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
        OPENSSL_strlcpy(prompt, prompt1, len + 1);
        OPENSSL_strlcat(prompt, object_desc, len + 1);
        if (object_name != ((void*)0)) {
            OPENSSL_strlcat(prompt, prompt2, len + 1);
            OPENSSL_strlcat(prompt, object_name, len + 1);
        }
        OPENSSL_strlcat(prompt, prompt3, len + 1);
    }
    return prompt;
}
