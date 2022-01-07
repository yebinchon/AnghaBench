
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int length; scalar_t__ data; } ;
typedef TYPE_2__ krb5_data ;
typedef scalar_t__ gss_channel_bindings_t ;
struct TYPE_6__ {int length; int * data; } ;
struct TYPE_8__ {TYPE_1__ checksum; int cksumtype; } ;
typedef int OM_uint32 ;
typedef TYPE_3__ Checksum ;


 int CKSUMTYPE_GSSAPI ;
 int ENOMEM ;
 int GSS_C_DELEG_FLAG ;
 scalar_t__ const GSS_C_NO_CHANNEL_BINDINGS ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int _gsskrb5_encode_om_uint32 (int,int *) ;
 int hash_input_chan_bindings (scalar_t__ const,int *) ;
 int * malloc (int) ;
 int memcpy (int *,unsigned char*,int) ;
 int memset (int *,int ,int) ;

OM_uint32
_gsskrb5_create_8003_checksum (
        OM_uint32 *minor_status,
        const gss_channel_bindings_t input_chan_bindings,
        OM_uint32 flags,
        const krb5_data *fwd_data,
        Checksum *result)
{
    u_char *p;




    result->cksumtype = CKSUMTYPE_GSSAPI;
    if (fwd_data->length > 0 && (flags & GSS_C_DELEG_FLAG))
 result->checksum.length = 24 + 4 + fwd_data->length;
    else
 result->checksum.length = 24;
    result->checksum.data = malloc (result->checksum.length);
    if (result->checksum.data == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }

    p = result->checksum.data;
    _gsskrb5_encode_om_uint32 (16, p);
    p += 4;
    if (input_chan_bindings == GSS_C_NO_CHANNEL_BINDINGS) {
 memset (p, 0, 16);
    } else {
 hash_input_chan_bindings (input_chan_bindings, p);
    }
    p += 16;
    _gsskrb5_encode_om_uint32 (flags, p);
    p += 4;

    if (fwd_data->length > 0 && (flags & GSS_C_DELEG_FLAG)) {

 *p++ = (1 >> 0) & 0xFF;
 *p++ = (1 >> 8) & 0xFF;
 *p++ = (fwd_data->length >> 0) & 0xFF;
 *p++ = (fwd_data->length >> 8) & 0xFF;
 memcpy(p, (unsigned char *) fwd_data->data, fwd_data->length);

 p += fwd_data->length;
    }

    return GSS_S_COMPLETE;
}
