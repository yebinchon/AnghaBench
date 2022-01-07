
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_len; int enckey; int cipher_type; } ;
struct ccp_session {TYPE_1__ blkcipher; } ;


 int CCP_AES_TYPE_128 ;
 int CCP_AES_TYPE_192 ;
 int CCP_AES_TYPE_256 ;
 int CRYPTO_AES_XTS ;
 int memcpy (int ,void const*,int) ;
 int panic (char*) ;

__attribute__((used)) static void
ccp_aes_setkey(struct ccp_session *s, int alg, const void *key, int klen)
{
 unsigned kbits;

 if (alg == CRYPTO_AES_XTS)
  kbits = klen / 2;
 else
  kbits = klen;

 switch (kbits) {
 case 128:
  s->blkcipher.cipher_type = CCP_AES_TYPE_128;
  break;
 case 192:
  s->blkcipher.cipher_type = CCP_AES_TYPE_192;
  break;
 case 256:
  s->blkcipher.cipher_type = CCP_AES_TYPE_256;
  break;
 default:
  panic("should not get here");
 }

 s->blkcipher.key_len = klen / 8;
 memcpy(s->blkcipher.enckey, key, s->blkcipher.key_len);
}
