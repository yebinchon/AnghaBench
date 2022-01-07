
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int * data; scalar_t__ length; } ;
typedef TYPE_1__ krb5_data ;
typedef TYPE_2__* gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_6__ {int * value; int length; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ _gsskrb5_verify_header (int **,int ,void const*,int ) ;

OM_uint32
_gsskrb5_decapsulate(OM_uint32 *minor_status,
   gss_buffer_t input_token_buffer,
   krb5_data *out_data,
   const void *type,
   gss_OID oid)
{
    u_char *p;
    OM_uint32 ret;

    p = input_token_buffer->value;
    ret = _gsskrb5_verify_header(&p,
        input_token_buffer->length,
        type,
        oid);
    if (ret) {
 *minor_status = 0;
 return ret;
    }

    out_data->length = input_token_buffer->length -
 (p - (u_char *)input_token_buffer->value);
    out_data->data = p;
    return GSS_S_COMPLETE;
}
