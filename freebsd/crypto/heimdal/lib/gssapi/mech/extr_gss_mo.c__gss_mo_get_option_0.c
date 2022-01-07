
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_mo_desc ;
typedef int gss_const_OID ;
typedef int gss_buffer_t ;


 int get_option_def (int ,int ,int *,int ) ;

int
_gss_mo_get_option_0(gss_const_OID mech, gss_mo_desc *mo, gss_buffer_t value)
{
    return get_option_def(0, mech, mo, value);
}
