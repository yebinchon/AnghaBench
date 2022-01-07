
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct aes_xts_ctx {int key2; int key1; } ;
typedef int keyInstance ;
typedef int cipherInstance ;
typedef int caddr_t ;
struct TYPE_2__ {int (* encrypt ) (int ,int *) ;int (* decrypt ) (int ,int *) ;int (* reinit ) (int ,int *) ;} ;


 int AES_XTS_BLOCKSIZE ;


 int MODE_CBC ;
 TYPE_1__ enc_xform_aes_xts ;
 int printf (char*,int,...) ;
 int rijndael_blockDecrypt (int *,int *,int *,size_t,int *) ;
 int rijndael_blockEncrypt (int *,int *,int *,size_t,int *) ;
 int rijndael_cipherInit (int *,int ,int *) ;
 int rijndael_makeKey (int *,int,size_t,char const*) ;
 int rijndael_set_key (int *,int const*,size_t) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int stub3 (int ,int *) ;

int
geliboot_crypt(u_int algo, int enc, u_char *data, size_t datasize,
    const u_char *key, size_t keysize, u_char *iv)
{
 keyInstance aeskey;
 cipherInstance cipher;
 struct aes_xts_ctx xtsctx, *ctxp;
 size_t xts_len;
 int err, blks, i;

 switch (algo) {
 case 129:
  err = rijndael_makeKey(&aeskey, !enc, keysize,
      (const char *)key);
  if (err < 0) {
   printf("Failed to setup decryption keys: %d\n", err);
   return (err);
  }

  err = rijndael_cipherInit(&cipher, MODE_CBC, iv);
  if (err < 0) {
   printf("Failed to setup IV: %d\n", err);
   return (err);
  }

  if (enc == 0) {

   blks = rijndael_blockDecrypt(&cipher, &aeskey, data,
       datasize * 8, data);
  } else {

   blks = rijndael_blockEncrypt(&cipher, &aeskey, data,
       datasize * 8, data);
  }
  if (datasize != (blks / 8)) {
   printf("Failed to decrypt the entire input: "
       "%u != %zu\n", blks, datasize);
   return (1);
  }
  break;
 case 128:
  xts_len = keysize << 1;
  ctxp = &xtsctx;

  rijndael_set_key(&ctxp->key1, key, xts_len / 2);
  rijndael_set_key(&ctxp->key2, key + (xts_len / 16), xts_len / 2);

  enc_xform_aes_xts.reinit((caddr_t)ctxp, iv);

  switch (enc) {
  case 0:
   for (i = 0; i < datasize; i += AES_XTS_BLOCKSIZE) {
    enc_xform_aes_xts.decrypt((caddr_t)ctxp, data + i);
   }
   break;
  case 1:
   for (i = 0; i < datasize; i += AES_XTS_BLOCKSIZE) {
    enc_xform_aes_xts.encrypt((caddr_t)ctxp, data + i);
   }
   break;
  }
  break;
 default:
  printf("Unsupported crypto algorithm #%d\n", algo);
  return (1);
 }

 return (0);
}
