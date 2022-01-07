
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int PTYPE ;


 int ENOMEM ;
 char* getenv (char*) ;
 scalar_t__ issuid () ;
 char* strdup (char const*) ;

__attribute__((used)) static int
_expand_temp_folder(krb5_context context, PTYPE param, const char *postfix, char **ret)
{
    const char *p = ((void*)0);

    if (issuid())
 p = getenv("TEMP");
    if (p)
 *ret = strdup(p);
    else
 *ret = strdup("/tmp");
    if (*ret == ((void*)0))
 return ENOMEM;
    return 0;
}
