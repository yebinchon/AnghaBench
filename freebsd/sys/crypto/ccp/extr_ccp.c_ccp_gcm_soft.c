
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cryptop {scalar_t__ crp_etype; int crp_buf; int crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_inject; scalar_t__ crd_skip; int crd_iv; } ;
struct TYPE_2__ {int key_len; int enckey; } ;
struct ccp_session {TYPE_1__ blkcipher; } ;
struct aes_gmac_ctx {int dummy; } ;
typedef int iv ;
typedef int digest2 ;
typedef int digest ;
typedef int block ;


 int AES_BLOCK_LEN ;
 int AES_GMAC_Final (char*,struct aes_gmac_ctx*) ;
 int AES_GMAC_Init (struct aes_gmac_ctx*) ;
 int AES_GMAC_Reinit (struct aes_gmac_ctx*,char*,int) ;
 int AES_GMAC_Setkey (struct aes_gmac_ctx*,int ,int ) ;
 int AES_GMAC_Update (struct aes_gmac_ctx*,char*,int) ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 scalar_t__ EBADMSG ;
 int GMAC_BLOCK_LEN ;
 int GMAC_DIGEST_LEN ;
 int arc4rand (char*,int,int ) ;
 int bzero (char*,int) ;
 int crypto_copyback (int ,int ,scalar_t__,int,char*) ;
 int crypto_copydata (int ,int ,scalar_t__,int,char*) ;
 int crypto_done (struct cryptop*) ;
 int htobe32 (int) ;
 int imin (int,int) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ timingsafe_bcmp (char*,char*,int) ;

__attribute__((used)) static void
ccp_gcm_soft(struct ccp_session *s, struct cryptop *crp,
    struct cryptodesc *crda, struct cryptodesc *crde)
{
 struct aes_gmac_ctx gmac_ctx;
 char block[GMAC_BLOCK_LEN];
 char digest[GMAC_DIGEST_LEN];
 char iv[AES_BLOCK_LEN];
 int i, len;





 if (crde->crd_flags & CRD_F_ENCRYPT) {
  if (crde->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(iv, crde->crd_iv, 12);
  else
   arc4rand(iv, 12, 0);
  if ((crde->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       crde->crd_inject, 12, iv);
 } else {
  if (crde->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(iv, crde->crd_iv, 12);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       crde->crd_inject, 12, iv);
 }
 *(uint32_t *)&iv[12] = htobe32(1);


 AES_GMAC_Init(&gmac_ctx);
 AES_GMAC_Setkey(&gmac_ctx, s->blkcipher.enckey, s->blkcipher.key_len);
 AES_GMAC_Reinit(&gmac_ctx, iv, sizeof(iv));


 for (i = 0; i < crda->crd_len; i += sizeof(block)) {
  len = imin(crda->crd_len - i, sizeof(block));
  crypto_copydata(crp->crp_flags, crp->crp_buf, crda->crd_skip +
      i, len, block);
  bzero(block + len, sizeof(block) - len);
  AES_GMAC_Update(&gmac_ctx, block, sizeof(block));
 }


 bzero(block, sizeof(block));
 ((uint32_t *)block)[1] = htobe32(crda->crd_len * 8);
 AES_GMAC_Update(&gmac_ctx, block, sizeof(block));
 AES_GMAC_Final(digest, &gmac_ctx);

 if (crde->crd_flags & CRD_F_ENCRYPT) {
  crypto_copyback(crp->crp_flags, crp->crp_buf, crda->crd_inject,
      sizeof(digest), digest);
  crp->crp_etype = 0;
 } else {
  char digest2[GMAC_DIGEST_LEN];

  crypto_copydata(crp->crp_flags, crp->crp_buf, crda->crd_inject,
      sizeof(digest2), digest2);
  if (timingsafe_bcmp(digest, digest2, sizeof(digest)) == 0)
   crp->crp_etype = 0;
  else
   crp->crp_etype = EBADMSG;
 }
 crypto_done(crp);
}
