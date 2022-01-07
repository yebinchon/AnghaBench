
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gssapi_mech_interface ;


 int krb5_mech ;

gssapi_mech_interface
__gss_krb5_initialize(void)
{
    return &krb5_mech;
}
