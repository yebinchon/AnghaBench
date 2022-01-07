
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {unsigned char* value; int length; } ;
typedef int RC4_KEY ;
typedef int OM_uint32 ;
typedef int HMAC_CTX ;


 int EVP_md5 () ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,unsigned char*,unsigned int*) ;
 int HMAC_Init_ex (int *,unsigned char*,int,int ,int *) ;
 int HMAC_Update (int *,unsigned char*,int) ;
 int RC4 (int *,int,unsigned char*,unsigned char*) ;
 int encode_le_uint32 (int,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static OM_uint32
v2_sign_message(gss_buffer_t in,
  unsigned char signkey[16],
  RC4_KEY *sealkey,
  uint32_t seq,
  unsigned char out[16])
{
    unsigned char hmac[16];
    unsigned int hmaclen;
    HMAC_CTX *c;

    c = HMAC_CTX_new();
    if (c == ((void*)0))
 return GSS_S_FAILURE;
    HMAC_Init_ex(c, signkey, 16, EVP_md5(), ((void*)0));

    encode_le_uint32(seq, hmac);
    HMAC_Update(c, hmac, 4);
    HMAC_Update(c, in->value, in->length);
    HMAC_Final(c, hmac, &hmaclen);
    HMAC_CTX_free(c);

    encode_le_uint32(1, &out[0]);
    if (sealkey)
 RC4(sealkey, 8, hmac, &out[4]);
    else
 memcpy(&out[4], hmac, 8);

    memset(&out[12], 0, 4);

    return GSS_S_COMPLETE;
}
