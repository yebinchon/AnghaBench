
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {int cri_klen; int cri_key; } ;
struct armv8_crypto_session {int algo; void** dec_schedule; void** enc_schedule; int rounds; } ;


 int AES128_ROUNDS ;
 int AES192_ROUNDS ;
 int AES256_ROUNDS ;
 int CRYPTDEB (char*) ;

 int EINVAL ;
 void* bswap32 (void*) ;
 int nitems (void**) ;
 int rijndaelKeySetupDec (void**,int ,int ) ;
 int rijndaelKeySetupEnc (void**,int ,int ) ;

__attribute__((used)) static int
armv8_crypto_cipher_setup(struct armv8_crypto_session *ses,
    struct cryptoini *encini)
{
 int i;

 switch (ses->algo) {
 case 128:
  switch (encini->cri_klen) {
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
 default:
  return (EINVAL);
 }

 rijndaelKeySetupEnc(ses->enc_schedule, encini->cri_key,
     encini->cri_klen);
 rijndaelKeySetupDec(ses->dec_schedule, encini->cri_key,
     encini->cri_klen);
 for (i = 0; i < nitems(ses->enc_schedule); i++) {
  ses->enc_schedule[i] = bswap32(ses->enc_schedule[i]);
  ses->dec_schedule[i] = bswap32(ses->dec_schedule[i]);
 }

 return (0);
}
