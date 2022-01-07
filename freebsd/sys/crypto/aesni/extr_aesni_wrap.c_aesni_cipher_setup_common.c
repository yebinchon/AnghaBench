
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct aesni_session {int algo; void* rounds; int xts_schedule; int dec_schedule; int enc_schedule; } ;


 void* AES128_ROUNDS ;
 void* AES192_ROUNDS ;
 void* AES256_ROUNDS ;
 int CRYPTDEB (char*) ;





 int EINVAL ;
 int aesni_set_deckey (int ,int ,void*) ;
 int aesni_set_enckey (int const*,int ,void*) ;

int
aesni_cipher_setup_common(struct aesni_session *ses, const uint8_t *key,
    int keylen)
{
 int decsched;

 decsched = 1;

 switch (ses->algo) {
 case 130:
 case 129:
 case 131:
  decsched = 0;

 case 132:
  switch (keylen) {
  case 128:
   ses->rounds = AES128_ROUNDS;
   break;
  case 192:
   ses->rounds = AES192_ROUNDS;
   break;
  case 256:
   ses->rounds = AES256_ROUNDS;
   break;
  default:
   CRYPTDEB("invalid CBC/ICM/GCM key length");
   return (EINVAL);
  }
  break;
 case 128:
  switch (keylen) {
  case 256:
   ses->rounds = AES128_ROUNDS;
   break;
  case 512:
   ses->rounds = AES256_ROUNDS;
   break;
  default:
   CRYPTDEB("invalid XTS key length");
   return (EINVAL);
  }
  break;
 default:
  return (EINVAL);
 }

 aesni_set_enckey(key, ses->enc_schedule, ses->rounds);
 if (decsched)
  aesni_set_deckey(ses->enc_schedule, ses->dec_schedule,
      ses->rounds);

 if (ses->algo == 128)
  aesni_set_enckey(key + keylen / 16, ses->xts_schedule,
      ses->rounds);

 return (0);
}
