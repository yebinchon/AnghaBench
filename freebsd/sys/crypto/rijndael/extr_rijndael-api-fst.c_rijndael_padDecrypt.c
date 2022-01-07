
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct TYPE_5__ {scalar_t__ direction; int Nr; int rk; } ;
typedef TYPE_1__ keyInstance ;
struct TYPE_6__ {int mode; int* IV; } ;
typedef TYPE_2__ cipherInstance ;
typedef int block ;
typedef int BYTE ;


 int BAD_CIPHER_STATE ;
 int BAD_DATA ;
 scalar_t__ DIR_ENCRYPT ;


 int explicit_bzero (int*,int) ;
 int memcpy (int*,int const*,int) ;
 int rijndaelDecrypt (int ,int ,int const*,int*) ;

int rijndael_padDecrypt(cipherInstance *cipher, keyInstance *key,
  const BYTE *input, int inputOctets, BYTE *outBuffer) {
 int i, numBlocks, padLen, rval;
 u_int8_t block[16];
 u_int32_t iv[4];

 if (cipher == ((void*)0) ||
  key == ((void*)0) ||
  key->direction == DIR_ENCRYPT) {
  return BAD_CIPHER_STATE;
 }
 if (input == ((void*)0) || inputOctets <= 0) {
  return 0;
 }
 if (inputOctets % 16 != 0) {
  return BAD_DATA;
 }

 numBlocks = inputOctets/16;

 switch (cipher->mode) {
 case 128:

  for (i = numBlocks - 1; i > 0; i--) {
   rijndaelDecrypt(key->rk, key->Nr, input, outBuffer);
   input += 16;
   outBuffer += 16;
  }

  rijndaelDecrypt(key->rk, key->Nr, input, block);
  padLen = block[15];
  if (padLen >= 16) {
   rval = BAD_DATA;
   goto out;
  }
  for (i = 16 - padLen; i < 16; i++) {
   if (block[i] != padLen) {
    rval = BAD_DATA;
    goto out;
   }
  }
  memcpy(outBuffer, block, 16 - padLen);
  break;

 case 129:
  memcpy(iv, cipher->IV, 16);

  for (i = numBlocks - 1; i > 0; i--) {
   rijndaelDecrypt(key->rk, key->Nr, input, block);
   ((u_int32_t*)block)[0] ^= iv[0];
   ((u_int32_t*)block)[1] ^= iv[1];
   ((u_int32_t*)block)[2] ^= iv[2];
   ((u_int32_t*)block)[3] ^= iv[3];
   memcpy(iv, input, 16);
   memcpy(outBuffer, block, 16);
   input += 16;
   outBuffer += 16;
  }

  rijndaelDecrypt(key->rk, key->Nr, input, block);
  ((u_int32_t*)block)[0] ^= iv[0];
  ((u_int32_t*)block)[1] ^= iv[1];
  ((u_int32_t*)block)[2] ^= iv[2];
  ((u_int32_t*)block)[3] ^= iv[3];
  padLen = block[15];
  if (padLen <= 0 || padLen > 16) {
   rval = BAD_DATA;
   goto out;
  }
  for (i = 16 - padLen; i < 16; i++) {
   if (block[i] != padLen) {
    rval = BAD_DATA;
    goto out;
   }
  }
  memcpy(outBuffer, block, 16 - padLen);
  break;

 default:
  return BAD_CIPHER_STATE;
 }

 rval = 16*numBlocks - padLen;

out:
 explicit_bzero(block, sizeof(block));
 return rval;
}
