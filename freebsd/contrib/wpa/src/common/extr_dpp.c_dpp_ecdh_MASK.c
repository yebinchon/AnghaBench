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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 size_t DPP_MAX_SHARED_SECRET_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MSG_DEBUG ; 
 int MSG_ERROR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 

__attribute__((used)) static int FUNC12(EVP_PKEY *own, EVP_PKEY *peer,
		    u8 *secret, size_t *secret_len)
{
	EVP_PKEY_CTX *ctx;
	int ret = -1;

	FUNC0();
	*secret_len = 0;

	ctx = FUNC4(own, NULL);
	if (!ctx) {
		FUNC11(MSG_ERROR, "DPP: EVP_PKEY_CTX_new failed: %s",
			   FUNC1(FUNC2(), NULL));
		return -1;
	}

	if (FUNC6(ctx) != 1) {
		FUNC11(MSG_ERROR, "DPP: EVP_PKEY_derive_init failed: %s",
			   FUNC1(FUNC2(), NULL));
		goto fail;
	}

	if (FUNC7(ctx, peer) != 1) {
		FUNC11(MSG_ERROR,
			   "DPP: EVP_PKEY_derive_set_peet failed: %s",
			   FUNC1(FUNC2(), NULL));
		goto fail;
	}

	if (FUNC5(ctx, NULL, secret_len) != 1) {
		FUNC11(MSG_ERROR, "DPP: EVP_PKEY_derive(NULL) failed: %s",
			   FUNC1(FUNC2(), NULL));
		goto fail;
	}

	if (*secret_len > DPP_MAX_SHARED_SECRET_LEN) {
		u8 buf[200];
		int level = *secret_len > 200 ? MSG_ERROR : MSG_DEBUG;

		/* It looks like OpenSSL can return unexpectedly large buffer
		 * need for shared secret from EVP_PKEY_derive(NULL) in some
		 * cases. For example, group 19 has shown cases where secret_len
		 * is set to 72 even though the actual length ends up being
		 * updated to 32 when EVP_PKEY_derive() is called with a buffer
		 * for the value. Work around this by trying to fetch the value
		 * and continue if it is within supported range even when the
		 * initial buffer need is claimed to be larger. */
		FUNC11(level,
			   "DPP: Unexpected secret_len=%d from EVP_PKEY_derive()",
			   (int) *secret_len);
		if (*secret_len > 200)
			goto fail;
		if (FUNC5(ctx, buf, secret_len) != 1) {
			FUNC11(MSG_ERROR, "DPP: EVP_PKEY_derive failed: %s",
				   FUNC1(FUNC2(), NULL));
			goto fail;
		}
		if (*secret_len > DPP_MAX_SHARED_SECRET_LEN) {
			FUNC11(MSG_ERROR,
				   "DPP: Unexpected secret_len=%d from EVP_PKEY_derive()",
				   (int) *secret_len);
			goto fail;
		}
		FUNC10(MSG_DEBUG, "DPP: Unexpected secret_len change",
				buf, *secret_len);
		FUNC9(secret, buf, *secret_len);
		FUNC8(buf, sizeof(buf));
		goto done;
	}

	if (FUNC5(ctx, secret, secret_len) != 1) {
		FUNC11(MSG_ERROR, "DPP: EVP_PKEY_derive failed: %s",
			   FUNC1(FUNC2(), NULL));
		goto fail;
	}

done:
	ret = 0;

fail:
	FUNC3(ctx);
	return ret;
}