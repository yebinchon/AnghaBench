
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int (* krb5_prompter_fct ) (int ,int *,int *,char*,int ,int *) ;
typedef int krb5_data ;
typedef int krb5_context ;


 scalar_t__ asprintf (char**,char*,char const*,int ) ;
 int ctime (int *) ;
 int free (char*) ;
 int stub1 (int ,int *,int *,char*,int ,int *) ;

__attribute__((used)) static void
report_expiration (krb5_context context,
     krb5_prompter_fct prompter,
     krb5_data *data,
     const char *str,
     time_t now)
{
    char *p = ((void*)0);

    if (asprintf(&p, "%s%s", str, ctime(&now)) < 0 || p == ((void*)0))
 return;
    (*prompter)(context, data, ((void*)0), p, 0, ((void*)0));
    free(p);
}
