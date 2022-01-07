
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef TYPE_2__* gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_6__ {size_t length; int * value; } ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int _gsskrb5_encap_length (int ,size_t*,size_t*,int const) ;
 int * _gsskrb5_make_header (int *,size_t,void const*,int const) ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,int ) ;

OM_uint32
_gsskrb5_encapsulate(
   OM_uint32 *minor_status,
   const krb5_data *in_data,
   gss_buffer_t output_token,
   const void *type,
   const gss_OID mech
)
{
    size_t len, outer_len;
    u_char *p;

    _gsskrb5_encap_length (in_data->length, &len, &outer_len, mech);

    output_token->length = outer_len;
    output_token->value = malloc (outer_len);
    if (output_token->value == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }

    p = _gsskrb5_make_header (output_token->value, len, type, mech);
    memcpy (p, in_data->data, in_data->length);
    return GSS_S_COMPLETE;
}
