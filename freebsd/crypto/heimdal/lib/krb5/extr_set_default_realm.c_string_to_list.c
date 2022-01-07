
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * krb5_realm ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int free (int **) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int ** malloc (int) ;
 int * strdup (char const*) ;

__attribute__((used)) static krb5_error_code
string_to_list (krb5_context context, const char *s, krb5_realm **list)
{

    *list = malloc (2 * sizeof(**list));
    if (*list == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    (*list)[0] = strdup (s);
    if ((*list)[0] == ((void*)0)) {
 free (*list);
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    (*list)[1] = ((void*)0);
    return 0;
}
