
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_OID ;


 int _gssapi_encap_length (size_t,size_t*,size_t*,int const) ;

void
_gsskrb5_encap_length (size_t data_len,
     size_t *len,
     size_t *total_len,
     const gss_OID mech)
{
    _gssapi_encap_length(data_len + 2, len, total_len, mech);
}
