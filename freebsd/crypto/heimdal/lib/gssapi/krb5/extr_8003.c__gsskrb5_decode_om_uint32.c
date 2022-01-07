
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int krb5_error_code ;
typedef int OM_uint32 ;



krb5_error_code
_gsskrb5_decode_om_uint32(const void *ptr, OM_uint32 *n)
{
    const u_char *p = ptr;
    *n = (p[0] << 0) | (p[1] << 8) | (p[2] << 16) | (p[3] << 24);
    return 0;
}
