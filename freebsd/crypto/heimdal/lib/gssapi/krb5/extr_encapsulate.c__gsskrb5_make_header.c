
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u_char ;
typedef int gss_OID ;


 void* _gssapi_make_mech_header (void*,size_t,int const) ;
 int memcpy (void*,void const*,int) ;

void *
_gsskrb5_make_header (void *ptr,
    size_t len,
    const void *type,
    const gss_OID mech)
{
    u_char *p = ptr;
    p = _gssapi_make_mech_header(p, len, mech);
    memcpy (p, type, 2);
    p += 2;
    return p;
}
