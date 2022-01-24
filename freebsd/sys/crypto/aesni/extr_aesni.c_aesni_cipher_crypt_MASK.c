#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tag ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_alg; int crd_len; int /*<<< orphan*/  crd_skip; int /*<<< orphan*/  crd_inject; int /*<<< orphan*/  crd_iv; int /*<<< orphan*/  crd_klen; int /*<<< orphan*/  crd_key; } ;
struct aesni_session {int algo; int /*<<< orphan*/  rounds; int /*<<< orphan*/  enc_schedule; int /*<<< orphan*/  xts_schedule; int /*<<< orphan*/  dec_schedule; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int CRD_F_KEY_EXPLICIT ; 
#define  CRYPTO_AES_CBC 132 
#define  CRYPTO_AES_CCM_16 131 
#define  CRYPTO_AES_ICM 130 
#define  CRYPTO_AES_NIST_GCM_16 129 
#define  CRYPTO_AES_XTS 128 
 int EBADMSG ; 
 int ENOMEM ; 
 int GMAC_DIGEST_LEN ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  M_AESNI ; 
 int /*<<< orphan*/ * FUNC5 (struct cryptodesc*,struct cryptop*,int*) ; 
 int FUNC6 (struct aesni_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct aesni_session *ses, struct cryptodesc *enccrd,
	struct cryptodesc *authcrd, struct cryptop *crp)
{
	uint8_t iv[AES_BLOCK_LEN], tag[GMAC_DIGEST_LEN], *buf, *authbuf;
	int error, ivlen;
	bool encflag, allocated, authallocated;

	FUNC4((ses->algo != CRYPTO_AES_NIST_GCM_16 &&
		ses->algo != CRYPTO_AES_CCM_16) || authcrd != NULL,
	    ("AES_NIST_GCM_16/AES_CCM_16  must include MAC descriptor"));

	ivlen = 0;
	authbuf = NULL;

	buf = FUNC5(enccrd, crp, &allocated);
	if (buf == NULL)
		return (ENOMEM);

	authallocated = false;
	if (ses->algo == CRYPTO_AES_NIST_GCM_16 ||
	    ses->algo == CRYPTO_AES_CCM_16) {
		authbuf = FUNC5(authcrd, crp, &authallocated);
		if (authbuf == NULL) {
			error = ENOMEM;
			goto out;
		}
	}

	error = 0;
	encflag = (enccrd->crd_flags & CRD_F_ENCRYPT) == CRD_F_ENCRYPT;
	if ((enccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0) {
		error = FUNC6(ses, enccrd->crd_key,
		    enccrd->crd_klen);
		if (error != 0)
			goto out;
	}

	switch (enccrd->crd_alg) {
	case CRYPTO_AES_CBC:
	case CRYPTO_AES_ICM:
		ivlen = AES_BLOCK_LEN;
		break;
	case CRYPTO_AES_XTS:
		ivlen = 8;
		break;
	case CRYPTO_AES_NIST_GCM_16:
	case CRYPTO_AES_CCM_16:
		ivlen = 12;	/* should support arbitarily larger */
		break;
	}

	/* Setup iv */
	if (encflag) {
		if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
			FUNC13(enccrd->crd_iv, iv, ivlen);
		else
			FUNC12(iv, ivlen, 0);
		
		if ((enccrd->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC15(crp->crp_flags, crp->crp_buf,
			    enccrd->crd_inject, ivlen, iv);
	} else {
		if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
			FUNC13(enccrd->crd_iv, iv, ivlen);
		else
			FUNC16(crp->crp_flags, crp->crp_buf,
			    enccrd->crd_inject, ivlen, iv);
	}

	switch (ses->algo) {
	case CRYPTO_AES_CBC:
		if (encflag)
			FUNC9(ses->rounds, ses->enc_schedule,
			    enccrd->crd_len, buf, buf, iv);
		else
			FUNC7(ses->rounds, ses->dec_schedule,
			    enccrd->crd_len, buf, iv);
		break;
	case CRYPTO_AES_ICM:
		/* encryption & decryption are the same */
		FUNC10(ses->rounds, ses->enc_schedule,
		    enccrd->crd_len, buf, buf, iv);
		break;
	case CRYPTO_AES_XTS:
		if (encflag)
			FUNC11(ses->rounds, ses->enc_schedule,
			    ses->xts_schedule, enccrd->crd_len, buf, buf,
			    iv);
		else
			FUNC8(ses->rounds, ses->dec_schedule,
			    ses->xts_schedule, enccrd->crd_len, buf, buf,
			    iv);
		break;
	case CRYPTO_AES_NIST_GCM_16:
		if (!encflag)
			FUNC16(crp->crp_flags, crp->crp_buf,
			    authcrd->crd_inject, sizeof(tag), tag);
		else
			FUNC14(tag, sizeof tag);

		if (encflag) {
			FUNC3(buf, buf, authbuf, iv, tag,
			    enccrd->crd_len, authcrd->crd_len, ivlen,
			    ses->enc_schedule, ses->rounds);

			if (authcrd != NULL)
				FUNC15(crp->crp_flags, crp->crp_buf,
				    authcrd->crd_inject, sizeof(tag), tag);
		} else {
			if (!FUNC2(buf, buf, authbuf, iv, tag,
			    enccrd->crd_len, authcrd->crd_len, ivlen,
			    ses->enc_schedule, ses->rounds))
				error = EBADMSG;
		}
		break;
	case CRYPTO_AES_CCM_16:
		if (!encflag)
			FUNC16(crp->crp_flags, crp->crp_buf,
			    authcrd->crd_inject, sizeof(tag), tag);
		else
			FUNC14(tag, sizeof tag);
		if (encflag) {
			FUNC1(buf, buf, authbuf, iv, tag,
			    enccrd->crd_len, authcrd->crd_len, ivlen,
			    ses->enc_schedule, ses->rounds);
			if (authcrd != NULL)
				FUNC15(crp->crp_flags, crp->crp_buf,
				    authcrd->crd_inject, sizeof(tag), tag);
		} else {
			if (!FUNC0(buf, buf, authbuf, iv, tag,
			    enccrd->crd_len, authcrd->crd_len, ivlen,
			    ses->enc_schedule, ses->rounds))
				error = EBADMSG;
		}
		break;
	}
	if (allocated && error == 0)
		FUNC15(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
		    enccrd->crd_len, buf);

out:
	if (allocated) {
		FUNC17(buf, enccrd->crd_len);
		FUNC18(buf, M_AESNI);
	}
	if (authallocated) {
		FUNC17(authbuf, authcrd->crd_len);
		FUNC18(authbuf, M_AESNI);
	}
	return (error);
}