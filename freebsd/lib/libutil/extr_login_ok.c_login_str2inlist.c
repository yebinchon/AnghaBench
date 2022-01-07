
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ login_strinlist (char const**,char const*,int) ;

int
login_str2inlist(const char **ttlst, const char *str1, const char *str2, int flags)
{
    int rc = 0;

    if (login_strinlist(ttlst, str1, flags))
 rc = 1;
    else if (login_strinlist(ttlst, str2, flags))
 rc = 1;
    return rc;
}
