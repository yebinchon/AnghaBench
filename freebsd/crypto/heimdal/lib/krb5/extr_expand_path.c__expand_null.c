
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_context ;
typedef int PTYPE ;


 int ENOMEM ;
 int krb5_set_error_message (scalar_t__,int,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static int
_expand_null(krb5_context context, PTYPE param, const char *postfix, char **ret)
{
    *ret = strdup("");
    if (*ret == ((void*)0)) {
 if (context)
     krb5_set_error_message(context, ENOMEM, "Out of memory");
 return ENOMEM;
    }
    return 0;
}
