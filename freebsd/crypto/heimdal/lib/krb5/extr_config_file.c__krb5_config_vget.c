
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int krb5_context ;
typedef int krb5_config_section ;
typedef int krb5_config_binding ;


 void const* _krb5_config_vget_next (int ,int const*,int const**,int,int ) ;

const void *
_krb5_config_vget (krb5_context context,
     const krb5_config_section *c,
     int type,
     va_list args)
{
    const krb5_config_binding *foo = ((void*)0);

    return _krb5_config_vget_next (context, c, &foo, type, args);
}
