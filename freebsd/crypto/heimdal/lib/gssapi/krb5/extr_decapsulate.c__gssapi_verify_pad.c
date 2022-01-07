
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_char ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; scalar_t__ value; } ;
typedef int OM_uint32 ;


 int GSS_S_BAD_MECH ;
 int GSS_S_BAD_MIC ;

OM_uint32
_gssapi_verify_pad(gss_buffer_t wrapped_token,
     size_t datalen,
     size_t *padlen)
{
    u_char *pad;
    size_t padlength;
    int i;

    pad = (u_char *)wrapped_token->value + wrapped_token->length - 1;
    padlength = *pad;

    if (padlength > datalen)
 return GSS_S_BAD_MECH;

    for (i = padlength; i > 0 && *pad == padlength; i--, pad--)
 ;
    if (i != 0)
 return GSS_S_BAD_MIC;

    *padlen = padlength;

    return 0;
}
