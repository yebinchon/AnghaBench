
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int PTYPE ;


 int ENOMEM ;
 int asprintf (char**,char*,unsigned long) ;
 scalar_t__ getuid () ;

__attribute__((used)) static int
_expand_userid(krb5_context context, PTYPE param, const char *postfix, char **str)
{
    int ret = asprintf(str, "%ld", (unsigned long)getuid());
    if (ret < 0 || *str == ((void*)0))
 return ENOMEM;
    return 0;
}
