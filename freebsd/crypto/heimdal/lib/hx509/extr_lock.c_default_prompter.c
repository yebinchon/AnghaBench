
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int length; } ;
struct TYPE_5__ {TYPE_1__ reply; int prompt; int type; } ;
typedef TYPE_2__ hx509_prompt ;


 scalar_t__ UI_UTIL_read_pw_string (char*,int ,int ,int ) ;
 int fflush (int ) ;
 int * fgets (char*,int ,int ) ;
 int fputs (int ,int ) ;
 scalar_t__ hx509_prompt_hidden (int ) ;
 int stdin ;
 int stdout ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static int
default_prompter(void *data, const hx509_prompt *prompter)
{
    if (hx509_prompt_hidden(prompter->type)) {
 if(UI_UTIL_read_pw_string(prompter->reply.data,
      prompter->reply.length,
      prompter->prompt,
      0))
     return 1;
    } else {
 char *s = prompter->reply.data;

 fputs (prompter->prompt, stdout);
 fflush (stdout);
 if(fgets(prompter->reply.data,
   prompter->reply.length,
   stdin) == ((void*)0))
     return 1;
 s[strcspn(s, "\n")] = '\0';
    }
    return 0;
}
