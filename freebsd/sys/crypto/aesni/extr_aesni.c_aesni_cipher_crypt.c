
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tag ;
struct cryptop {int crp_buf; int crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_alg; int crd_len; int crd_skip; int crd_inject; int crd_iv; int crd_klen; int crd_key; } ;
struct aesni_session {int algo; int rounds; int enc_schedule; int xts_schedule; int dec_schedule; } ;


 int AES_BLOCK_LEN ;
 int AES_CCM_decrypt (int *,int *,int *,int *,int *,int,int,int,int ,int ) ;
 int AES_CCM_encrypt (int *,int *,int *,int *,int *,int,int,int,int ,int ) ;
 int AES_GCM_decrypt (int *,int *,int *,int *,int *,int,int,int,int ,int ) ;
 int AES_GCM_encrypt (int *,int *,int *,int *,int *,int,int,int,int ,int ) ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;





 int EBADMSG ;
 int ENOMEM ;
 int GMAC_DIGEST_LEN ;
 int KASSERT (int,char*) ;
 int M_AESNI ;
 int * aesni_cipher_alloc (struct cryptodesc*,struct cryptop*,int*) ;
 int aesni_cipher_setup_common (struct aesni_session*,int ,int ) ;
 int aesni_decrypt_cbc (int ,int ,int,int *,int *) ;
 int aesni_decrypt_xts (int ,int ,int ,int,int *,int *,int *) ;
 int aesni_encrypt_cbc (int ,int ,int,int *,int *,int *) ;
 int aesni_encrypt_icm (int ,int ,int,int *,int *,int *) ;
 int aesni_encrypt_xts (int ,int ,int ,int,int *,int *,int *) ;
 int arc4rand (int *,int,int ) ;
 int bcopy (int ,int *,int) ;
 int bzero (int *,int) ;
 int crypto_copyback (int ,int ,int ,int,int *) ;
 int crypto_copydata (int ,int ,int ,int,int *) ;
 int explicit_bzero (int *,int) ;
 int free (int *,int ) ;

__attribute__((used)) static int
aesni_cipher_crypt(struct aesni_session *ses, struct cryptodesc *enccrd,
 struct cryptodesc *authcrd, struct cryptop *crp)
{
 uint8_t iv[AES_BLOCK_LEN], tag[GMAC_DIGEST_LEN], *buf, *authbuf;
 int error, ivlen;
 bool encflag, allocated, authallocated;

 KASSERT((ses->algo != 129 &&
  ses->algo != 131) || authcrd != ((void*)0),
     ("AES_NIST_GCM_16/AES_CCM_16  must include MAC descriptor"));

 ivlen = 0;
 authbuf = ((void*)0);

 buf = aesni_cipher_alloc(enccrd, crp, &allocated);
 if (buf == ((void*)0))
  return (ENOMEM);

 authallocated = 0;
 if (ses->algo == 129 ||
     ses->algo == 131) {
  authbuf = aesni_cipher_alloc(authcrd, crp, &authallocated);
  if (authbuf == ((void*)0)) {
   error = ENOMEM;
   goto out;
  }
 }

 error = 0;
 encflag = (enccrd->crd_flags & CRD_F_ENCRYPT) == CRD_F_ENCRYPT;
 if ((enccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0) {
  error = aesni_cipher_setup_common(ses, enccrd->crd_key,
      enccrd->crd_klen);
  if (error != 0)
   goto out;
 }

 switch (enccrd->crd_alg) {
 case 132:
 case 130:
  ivlen = AES_BLOCK_LEN;
  break;
 case 128:
  ivlen = 8;
  break;
 case 129:
 case 131:
  ivlen = 12;
  break;
 }


 if (encflag) {
  if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
   bcopy(enccrd->crd_iv, iv, ivlen);
  else
   arc4rand(iv, ivlen, 0);

  if ((enccrd->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       enccrd->crd_inject, ivlen, iv);
 } else {
  if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
   bcopy(enccrd->crd_iv, iv, ivlen);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       enccrd->crd_inject, ivlen, iv);
 }

 switch (ses->algo) {
 case 132:
  if (encflag)
   aesni_encrypt_cbc(ses->rounds, ses->enc_schedule,
       enccrd->crd_len, buf, buf, iv);
  else
   aesni_decrypt_cbc(ses->rounds, ses->dec_schedule,
       enccrd->crd_len, buf, iv);
  break;
 case 130:

  aesni_encrypt_icm(ses->rounds, ses->enc_schedule,
      enccrd->crd_len, buf, buf, iv);
  break;
 case 128:
  if (encflag)
   aesni_encrypt_xts(ses->rounds, ses->enc_schedule,
       ses->xts_schedule, enccrd->crd_len, buf, buf,
       iv);
  else
   aesni_decrypt_xts(ses->rounds, ses->dec_schedule,
       ses->xts_schedule, enccrd->crd_len, buf, buf,
       iv);
  break;
 case 129:
  if (!encflag)
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       authcrd->crd_inject, sizeof(tag), tag);
  else
   bzero(tag, sizeof tag);

  if (encflag) {
   AES_GCM_encrypt(buf, buf, authbuf, iv, tag,
       enccrd->crd_len, authcrd->crd_len, ivlen,
       ses->enc_schedule, ses->rounds);

   if (authcrd != ((void*)0))
    crypto_copyback(crp->crp_flags, crp->crp_buf,
        authcrd->crd_inject, sizeof(tag), tag);
  } else {
   if (!AES_GCM_decrypt(buf, buf, authbuf, iv, tag,
       enccrd->crd_len, authcrd->crd_len, ivlen,
       ses->enc_schedule, ses->rounds))
    error = EBADMSG;
  }
  break;
 case 131:
  if (!encflag)
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       authcrd->crd_inject, sizeof(tag), tag);
  else
   bzero(tag, sizeof tag);
  if (encflag) {
   AES_CCM_encrypt(buf, buf, authbuf, iv, tag,
       enccrd->crd_len, authcrd->crd_len, ivlen,
       ses->enc_schedule, ses->rounds);
   if (authcrd != ((void*)0))
    crypto_copyback(crp->crp_flags, crp->crp_buf,
        authcrd->crd_inject, sizeof(tag), tag);
  } else {
   if (!AES_CCM_decrypt(buf, buf, authbuf, iv, tag,
       enccrd->crd_len, authcrd->crd_len, ivlen,
       ses->enc_schedule, ses->rounds))
    error = EBADMSG;
  }
  break;
 }
 if (allocated && error == 0)
  crypto_copyback(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
      enccrd->crd_len, buf);

out:
 if (allocated) {
  explicit_bzero(buf, enccrd->crd_len);
  free(buf, M_AESNI);
 }
 if (authallocated) {
  explicit_bzero(authbuf, authcrd->crd_len);
  free(authbuf, M_AESNI);
 }
 return (error);
}
