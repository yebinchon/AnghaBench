
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int krb5_error_code ;
typedef int OM_uint32 ;



krb5_error_code
_gsskrb5_decode_be_om_uint32(const void *ptr, OM_uint32 *n)
{
    const u_char *p = ptr;
    *n = (p[0] <<24) | (p[1] << 16) | (p[2] << 8) | (p[3] << 0);
    return 0;
}
