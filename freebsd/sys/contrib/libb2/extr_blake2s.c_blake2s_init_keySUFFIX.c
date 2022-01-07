
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int blake2s_state ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_9__ {size_t member_0; size_t member_1; int member_2; int member_3; TYPE_2__ member_9; TYPE_1__ member_8; int member_7; int member_6; TYPE_3__ member_5; int member_4; } ;
typedef TYPE_4__ blake2s_param ;


 int BLAKE2S_BLOCKBYTES ;
 size_t BLAKE2S_KEYBYTES ;
 size_t BLAKE2S_OUTBYTES ;
 scalar_t__ blake2s_init_param (int *,TYPE_4__ const*) ;
 int blake2s_update (int *,int *,int) ;
 int memcpy (int *,void const*,size_t) ;
 int memset (int *,int ,int) ;
 int secure_zero_memory (int *,int) ;

int blake2s_init_key( blake2s_state *S, size_t outlen, const void *key, size_t keylen )
{
  if ( ( !outlen ) || ( outlen > BLAKE2S_OUTBYTES ) ) return -1;

  if ( ( !key ) || ( !keylen ) || keylen > BLAKE2S_KEYBYTES ) return -1;

  const blake2s_param P =
  {
    outlen,
    keylen,
    1,
    1,
    0,
    {0},
    0,
    0,
    {0},
    {0}
  };

  if( blake2s_init_param( S, &P ) < 0 )
    return -1;

  {
    uint8_t block[BLAKE2S_BLOCKBYTES];
    memset( block, 0, BLAKE2S_BLOCKBYTES );
    memcpy( block, key, keylen );
    blake2s_update( S, block, BLAKE2S_BLOCKBYTES );
    secure_zero_memory( block, BLAKE2S_BLOCKBYTES );
  }
  return 0;
}
