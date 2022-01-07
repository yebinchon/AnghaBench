
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int PTYPE ;


 int ENOMEM ;
 int krb5_set_error_message (int ,int,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
_expand_path(krb5_context context, PTYPE param, const char *postfix, char **ret)
{
    *ret = strdup(postfix);
    if (*ret == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc - out of memory");
 return ENOMEM;
    }
    return 0;
}
