
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_6__ {int length; int * value; } ;
typedef int RC4_KEY ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_BAD_MIC ;
 int RC4 (int *,int,int *,int *) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int * malloc (int) ;
 scalar_t__ v2_verify_message (TYPE_1__*,unsigned char*,int *,int ,unsigned char const*) ;

__attribute__((used)) static OM_uint32
v2_unseal_message(gss_buffer_t in,
    unsigned char signkey[16],
    uint32_t seq,
    RC4_KEY *sealkey,
    gss_buffer_t out)
{
    OM_uint32 ret;

    if (in->length < 16)
 return GSS_S_BAD_MIC;

    out->length = in->length - 16;
    out->value = malloc(out->length);
    if (out->value == ((void*)0))
 return GSS_S_BAD_MIC;

    RC4(sealkey, out->length, in->value, out->value);

    ret = v2_verify_message(out, signkey, sealkey, seq,
       ((const unsigned char *)in->value) + out->length);
    if (ret) {
 OM_uint32 junk;
 gss_release_buffer(&junk, out);
    }
    return ret;
}
