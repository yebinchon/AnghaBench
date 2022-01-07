
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int krb5_config_get_time (int ,int *,char*,char const*,char const*,...) ;

__attribute__((used)) static int
get_config_time (krb5_context context,
   const char *realm,
   const char *name,
   int def)
{
    int ret;

    ret = krb5_config_get_time (context, ((void*)0),
    "realms",
    realm,
    name,
    ((void*)0));
    if (ret >= 0)
 return ret;
    ret = krb5_config_get_time (context, ((void*)0),
    "libdefaults",
    name,
    ((void*)0));
    if (ret >= 0)
 return ret;
    return def;
}
