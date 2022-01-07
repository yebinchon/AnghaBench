
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gssapi_mech_interface ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 int * __gss_get_mechanism (int ) ;
 int _gss_mg_error (int *,int ,int ) ;

void
gss_mg_collect_error(gss_OID mech, OM_uint32 maj, OM_uint32 min)
{
    gssapi_mech_interface m = __gss_get_mechanism(mech);
    if (m == ((void*)0))
 return;
    _gss_mg_error(m, maj, min);
}
