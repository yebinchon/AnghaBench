
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {scalar_t__ cri_mlen; int cri_klen; int cri_key; } ;
struct blake2_session {int algo; int klen; scalar_t__ mlen; int key; } ;


 scalar_t__ BLAKE2B_OUTBYTES ;
 int BLAKE2S_KEYBYTES ;
 scalar_t__ BLAKE2S_OUTBYTES ;


 int CTASSERT (int) ;
 int EINVAL ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
blake2_cipher_setup(struct blake2_session *ses, struct cryptoini *authini)
{
 int keylen;

 CTASSERT((size_t)BLAKE2S_OUTBYTES <= (size_t)BLAKE2B_OUTBYTES);

 if (authini->cri_mlen < 0)
  return (EINVAL);

 switch (ses->algo) {
 case 128:
  if (authini->cri_mlen != 0 &&
      authini->cri_mlen > BLAKE2S_OUTBYTES)
   return (EINVAL);

 case 129:
  if (authini->cri_mlen != 0 &&
      authini->cri_mlen > BLAKE2B_OUTBYTES)
   return (EINVAL);

  if (authini->cri_klen % 8 != 0)
   return (EINVAL);
  keylen = authini->cri_klen / 8;
  if (keylen > sizeof(ses->key) ||
      (ses->algo == 128 && keylen > BLAKE2S_KEYBYTES))
   return (EINVAL);
  ses->klen = keylen;
  memcpy(ses->key, authini->cri_key, keylen);
  ses->mlen = authini->cri_mlen;
 }
 return (0);
}
