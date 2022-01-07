
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_flags ;


 int kdb_attrs ;
 int parse_flags (char const*,int ,int) ;

int
str2attributes(const char *str, krb5_flags *flags)
{
    int res;

    res = parse_flags (str, kdb_attrs, *flags);
    if (res < 0)
 return res;
    else {
 *flags = res;
 return 0;
    }
}
