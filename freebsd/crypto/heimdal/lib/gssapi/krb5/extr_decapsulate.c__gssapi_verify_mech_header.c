
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef TYPE_1__* gss_OID ;
struct TYPE_3__ {scalar_t__ length; int elements; } ;
typedef int OM_uint32 ;


 int GSS_S_BAD_MECH ;
 int GSS_S_COMPLETE ;
 int GSS_S_DEFECTIVE_TOKEN ;
 scalar_t__ _gsskrb5_get_mech (int *,size_t,int const**) ;
 scalar_t__ ct_memcmp (int const*,int ,scalar_t__) ;
 int * rk_UNCONST (int const*) ;

OM_uint32
_gssapi_verify_mech_header(u_char **str,
      size_t total_len,
      gss_OID mech)
{
    const u_char *p;
    ssize_t mech_len;

    mech_len = _gsskrb5_get_mech (*str, total_len, &p);
    if (mech_len < 0)
 return GSS_S_DEFECTIVE_TOKEN;

    if (mech_len != mech->length)
 return GSS_S_BAD_MECH;
    if (ct_memcmp(p,
    mech->elements,
    mech->length) != 0)
 return GSS_S_BAD_MECH;
    p += mech_len;
    *str = rk_UNCONST(p);
    return GSS_S_COMPLETE;
}
