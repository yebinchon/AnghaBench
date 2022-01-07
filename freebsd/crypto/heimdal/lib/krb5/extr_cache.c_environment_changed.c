
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* krb5_context ;
struct TYPE_3__ {int * default_cc_name_env; scalar_t__ default_cc_name; scalar_t__ default_cc_name_set; } ;


 int free (int *) ;
 char* getenv (char*) ;
 scalar_t__ issuid () ;
 scalar_t__ strcmp (char const*,int *) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int
environment_changed(krb5_context context)
{
    const char *e;


    if (context->default_cc_name_set)
 return 0;


    if (context->default_cc_name &&
 (strncmp(context->default_cc_name, "KCM:", 4) == 0 ||
  strncmp(context->default_cc_name, "API:", 4) == 0))
 return 1;

    if(issuid())
 return 0;

    e = getenv("KRB5CCNAME");
    if (e == ((void*)0)) {
 if (context->default_cc_name_env) {
     free(context->default_cc_name_env);
     context->default_cc_name_env = ((void*)0);
     return 1;
 }
    } else {
 if (context->default_cc_name_env == ((void*)0))
     return 1;
 if (strcmp(e, context->default_cc_name_env) != 0)
     return 1;
    }
    return 0;
}
