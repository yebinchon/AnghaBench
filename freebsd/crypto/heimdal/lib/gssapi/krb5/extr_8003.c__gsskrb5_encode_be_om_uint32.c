
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int krb5_error_code ;
typedef int OM_uint32 ;



krb5_error_code
_gsskrb5_encode_be_om_uint32(OM_uint32 n, u_char *p)
{
  p[0] = (n >> 24) & 0xFF;
  p[1] = (n >> 16) & 0xFF;
  p[2] = (n >> 8) & 0xFF;
  p[3] = (n >> 0) & 0xFF;
  return 0;
}
