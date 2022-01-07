
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gssapi_mech_interface ;


 int ntlm_mech ;

gssapi_mech_interface
__gss_ntlm_initialize(void)
{
 return &ntlm_mech;
}
