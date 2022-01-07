
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cryptoini {int cri_alg; scalar_t__ cri_mlen; int cri_klen; int * cri_key; struct cryptoini* cri_next; } ;
struct ccp_softc {int valid_queues; int lock; int queues; scalar_t__ detaching; } ;
struct TYPE_6__ {int cipher_mode; unsigned int iv_len; } ;
struct TYPE_5__ {unsigned int auth_mode; unsigned int partial_digest_len; scalar_t__ hash_len; struct auth_hash* auth_hash; } ;
struct TYPE_4__ {scalar_t__ hash_len; } ;
struct ccp_session {unsigned int queue; int active; TYPE_3__ blkcipher; TYPE_2__ hmac; TYPE_1__ gmac; int mode; } ;
struct auth_hash {scalar_t__ hashsize; } ;
typedef enum ccp_aes_mode { ____Placeholder_ccp_aes_mode } ccp_aes_mode ;
typedef int device_t ;
typedef int crypto_session_t ;


 unsigned int AES_BLOCK_LEN ;
 unsigned int AES_GCM_IV_LEN ;
 scalar_t__ AES_GMAC_HASH_LEN ;
 int AUTHENC ;
 int BLKCIPHER ;
 int CCP_AES_MODE_CBC ;
 int CCP_AES_MODE_CTR ;
 int CCP_AES_MODE_ECB ;
 int CCP_AES_MODE_GCTR ;
 int CCP_AES_MODE_XTS ;
 unsigned int CHCR_SCMD_AUTH_MODE_GHASH ;
 int EINVAL ;
 int ENXIO ;
 int GCM ;
 int HMAC ;
 int MPASS (int ) ;
 unsigned int SHA1 ;
 unsigned int SHA1_HASH_LEN ;
 unsigned int SHA2_256 ;
 unsigned int SHA2_256_HASH_LEN ;
 unsigned int SHA2_384 ;
 unsigned int SHA2_512 ;
 unsigned int SHA2_512_HASH_LEN ;
 struct auth_hash auth_hash_hmac_sha1 ;
 struct auth_hash auth_hash_hmac_sha2_256 ;
 struct auth_hash auth_hash_hmac_sha2_384 ;
 struct auth_hash auth_hash_hmac_sha2_512 ;
 int ccp_aes_check_keylen (int,int ) ;
 int ccp_aes_setkey (struct ccp_session*,int,int *,int ) ;
 int ccp_init_hmac_digest (struct ccp_session*,int,int *,int ) ;
 struct ccp_session* crypto_get_driver_session (int ) ;
 struct ccp_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 unsigned int nitems (int ) ;

__attribute__((used)) static int
ccp_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct ccp_softc *sc;
 struct ccp_session *s;
 struct auth_hash *auth_hash;
 struct cryptoini *c, *hash, *cipher;
 enum ccp_aes_mode cipher_mode;
 unsigned auth_mode, iv_len;
 unsigned partial_digest_len;
 unsigned q;
 int error;
 bool gcm_hash;

 if (cri == ((void*)0))
  return (EINVAL);

 s = crypto_get_driver_session(cses);

 gcm_hash = 0;
 cipher = ((void*)0);
 hash = ((void*)0);
 auth_hash = ((void*)0);

 auth_mode = 0;
 cipher_mode = CCP_AES_MODE_ECB;
 iv_len = 0;
 partial_digest_len = 0;
 for (c = cri; c != ((void*)0); c = c->cri_next) {
  switch (c->cri_alg) {
  case 131:
  case 130:
  case 129:
  case 128:
  case 138:
  case 137:
  case 136:
   if (hash)
    return (EINVAL);
   hash = c;
   switch (c->cri_alg) {
   case 131:
    auth_hash = &auth_hash_hmac_sha1;
    auth_mode = SHA1;
    partial_digest_len = SHA1_HASH_LEN;
    break;
   case 130:
    auth_hash = &auth_hash_hmac_sha2_256;
    auth_mode = SHA2_256;
    partial_digest_len = SHA2_256_HASH_LEN;
    break;
   case 129:
    auth_hash = &auth_hash_hmac_sha2_384;
    auth_mode = SHA2_384;
    partial_digest_len = SHA2_512_HASH_LEN;
    break;
   case 128:
    auth_hash = &auth_hash_hmac_sha2_512;
    auth_mode = SHA2_512;
    partial_digest_len = SHA2_512_HASH_LEN;
    break;
   case 138:
   case 137:
   case 136:
    gcm_hash = 1;



    break;
   }
   break;
  case 135:
  case 134:
  case 133:
  case 132:
   if (cipher)
    return (EINVAL);
   cipher = c;
   switch (c->cri_alg) {
   case 135:
    cipher_mode = CCP_AES_MODE_CBC;
    iv_len = AES_BLOCK_LEN;
    break;
   case 134:
    cipher_mode = CCP_AES_MODE_CTR;
    iv_len = AES_BLOCK_LEN;
    break;
   case 133:
    cipher_mode = CCP_AES_MODE_GCTR;
    iv_len = AES_GCM_IV_LEN;
    break;
   case 132:
    cipher_mode = CCP_AES_MODE_XTS;
    iv_len = AES_BLOCK_LEN;
    break;
   }
   if (c->cri_key != ((void*)0)) {
    error = ccp_aes_check_keylen(c->cri_alg,
        c->cri_klen);
    if (error != 0)
     return (error);
   }
   break;
  default:
   return (EINVAL);
  }
 }
 if (gcm_hash != (cipher_mode == CCP_AES_MODE_GCTR))
  return (EINVAL);
 if (hash == ((void*)0) && cipher == ((void*)0))
  return (EINVAL);
 if (hash != ((void*)0) && hash->cri_key == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 mtx_lock(&sc->lock);
 if (sc->detaching) {
  mtx_unlock(&sc->lock);
  return (ENXIO);
 }


 for (q = 0; q < nitems(sc->queues); q++)
  if ((sc->valid_queues & (1 << q)) != 0)
   break;
 if (q == nitems(sc->queues)) {
  mtx_unlock(&sc->lock);
  return (ENXIO);
 }
 s->queue = q;

 if (gcm_hash)
  s->mode = GCM;
 else if (hash != ((void*)0) && cipher != ((void*)0))
  s->mode = AUTHENC;
 else if (hash != ((void*)0))
  s->mode = HMAC;
 else {
  MPASS(cipher != ((void*)0));
  s->mode = BLKCIPHER;
 }
 if (gcm_hash) {
  if (hash->cri_mlen == 0)
   s->gmac.hash_len = AES_GMAC_HASH_LEN;
  else
   s->gmac.hash_len = hash->cri_mlen;
 } else if (hash != ((void*)0)) {
  s->hmac.auth_hash = auth_hash;
  s->hmac.auth_mode = auth_mode;
  s->hmac.partial_digest_len = partial_digest_len;
  if (hash->cri_mlen == 0)
   s->hmac.hash_len = auth_hash->hashsize;
  else
   s->hmac.hash_len = hash->cri_mlen;
  ccp_init_hmac_digest(s, hash->cri_alg, hash->cri_key,
      hash->cri_klen);
 }
 if (cipher != ((void*)0)) {
  s->blkcipher.cipher_mode = cipher_mode;
  s->blkcipher.iv_len = iv_len;
  if (cipher->cri_key != ((void*)0))
   ccp_aes_setkey(s, cipher->cri_alg, cipher->cri_key,
       cipher->cri_klen);
 }

 s->active = 1;
 mtx_unlock(&sc->lock);

 return (0);
}
