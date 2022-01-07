
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_DEFECTIVE_TOKEN ;
 scalar_t__ _gssapi_verify_mech_header (int **,size_t,int ) ;
 scalar_t__ ct_memcmp (int *,void const*,int) ;

OM_uint32
_gsskrb5_verify_header(u_char **str,
     size_t total_len,
     const void *type,
     gss_OID oid)
{
    OM_uint32 ret;
    size_t len;
    u_char *p = *str;

    ret = _gssapi_verify_mech_header(str, total_len, oid);
    if (ret)
 return ret;

    len = total_len - (*str - p);

    if (len < 2)
 return GSS_S_DEFECTIVE_TOKEN;

    if (ct_memcmp (*str, type, 2) != 0)
 return GSS_S_DEFECTIVE_TOKEN;
    *str += 2;

    return 0;
}
