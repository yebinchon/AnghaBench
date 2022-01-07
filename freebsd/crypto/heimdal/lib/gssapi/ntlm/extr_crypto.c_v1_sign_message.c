
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sigature ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int value; } ;
typedef int RC4_KEY ;
typedef int OM_uint32 ;


 int GSS_S_UNAVAILABLE ;
 int RAND_bytes (unsigned char*,int) ;
 int RC4 (int *,int,unsigned char*,unsigned char*) ;
 int _krb5_crc_init_table () ;
 int _krb5_crc_update (int ,int ,int ) ;
 int encode_le_uint32 (int,unsigned char*) ;

__attribute__((used)) static OM_uint32
v1_sign_message(gss_buffer_t in,
  RC4_KEY *signkey,
  uint32_t seq,
  unsigned char out[16])
{
    unsigned char sigature[12];
    uint32_t crc;

    _krb5_crc_init_table();
    crc = _krb5_crc_update(in->value, in->length, 0);

    encode_le_uint32(0, &sigature[0]);
    encode_le_uint32(crc, &sigature[4]);
    encode_le_uint32(seq, &sigature[8]);

    encode_le_uint32(1, out);
    RC4(signkey, sizeof(sigature), sigature, out + 4);

    if (RAND_bytes(out + 4, 4) != 1)
 return GSS_S_UNAVAILABLE;

    return 0;
}
