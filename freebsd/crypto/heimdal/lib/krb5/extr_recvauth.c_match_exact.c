
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_boolean ;


 scalar_t__ strcmp (void const*,char const*) ;

__attribute__((used)) static krb5_boolean
match_exact(const void *data, const char *appl_version)
{
    return strcmp(data, appl_version) == 0;
}
