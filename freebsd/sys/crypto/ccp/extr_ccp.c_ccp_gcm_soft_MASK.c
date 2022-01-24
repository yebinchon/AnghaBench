#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct cryptop {scalar_t__ crp_etype; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_inject; scalar_t__ crd_skip; int /*<<< orphan*/  crd_iv; } ;
struct TYPE_2__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  enckey; } ;
struct ccp_session {TYPE_1__ blkcipher; } ;
struct aes_gmac_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  digest2 ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,struct aes_gmac_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct aes_gmac_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct aes_gmac_ctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aes_gmac_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aes_gmac_ctx*,char*,int) ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 scalar_t__ EBADMSG ; 
 int GMAC_BLOCK_LEN ; 
 int GMAC_DIGEST_LEN ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC14(struct ccp_session *s, struct cryptop *crp,
    struct cryptodesc *crda, struct cryptodesc *crde)
{
	struct aes_gmac_ctx gmac_ctx;
	char block[GMAC_BLOCK_LEN];
	char digest[GMAC_DIGEST_LEN];
	char iv[AES_BLOCK_LEN];
	int i, len;

	/*
	 * This assumes a 12-byte IV from the crp.  See longer comment
	 * above in ccp_gcm() for more details.
	 */
	if (crde->crd_flags & CRD_F_ENCRYPT) {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC12(iv, crde->crd_iv, 12);
		else
			FUNC5(iv, 12, 0);
		if ((crde->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC7(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, 12, iv);
	} else {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC12(iv, crde->crd_iv, 12);
		else
			FUNC8(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, 12, iv);
	}
	*(uint32_t *)&iv[12] = FUNC10(1);

	/* Initialize the MAC. */
	FUNC1(&gmac_ctx);
	FUNC3(&gmac_ctx, s->blkcipher.enckey, s->blkcipher.key_len);
	FUNC2(&gmac_ctx, iv, sizeof(iv));

	/* MAC the AAD. */
	for (i = 0; i < crda->crd_len; i += sizeof(block)) {
		len = FUNC11(crda->crd_len - i, sizeof(block));
		FUNC8(crp->crp_flags, crp->crp_buf, crda->crd_skip +
		    i, len, block);
		FUNC6(block + len, sizeof(block) - len);
		FUNC4(&gmac_ctx, block, sizeof(block));
	}

	/* Length block. */
	FUNC6(block, sizeof(block));
	((uint32_t *)block)[1] = FUNC10(crda->crd_len * 8);
	FUNC4(&gmac_ctx, block, sizeof(block));
	FUNC0(digest, &gmac_ctx);

	if (crde->crd_flags & CRD_F_ENCRYPT) {
		FUNC7(crp->crp_flags, crp->crp_buf, crda->crd_inject,
		    sizeof(digest), digest);
		crp->crp_etype = 0;
	} else {
		char digest2[GMAC_DIGEST_LEN];

		FUNC8(crp->crp_flags, crp->crp_buf, crda->crd_inject,
		    sizeof(digest2), digest2);
		if (FUNC13(digest, digest2, sizeof(digest)) == 0)
			crp->crp_etype = 0;
		else
			crp->crp_etype = EBADMSG;
	}
	FUNC9(crp);
}