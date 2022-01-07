
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;


 scalar_t__ krb5_config_get_bool_default (int ,int *,scalar_t__,char*,char const*,char const*,...) ;

__attribute__((used)) static krb5_boolean
get_config_bool (krb5_context context,
   krb5_boolean def_value,
   const char *realm,
   const char *name)
{
    krb5_boolean b;

    b = krb5_config_get_bool_default(context, ((void*)0), def_value,
         "realms", realm, name, ((void*)0));
    if (b != def_value)
 return b;
    b = krb5_config_get_bool_default (context, ((void*)0), def_value,
          "libdefaults", name, ((void*)0));
    if (b != def_value)
 return b;
    return def_value;
}
