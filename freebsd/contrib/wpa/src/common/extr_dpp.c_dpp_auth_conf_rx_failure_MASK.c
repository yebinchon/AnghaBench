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
typedef  int /*<<< orphan*/  const u8 ;
typedef  size_t u16 ;
struct dpp_authentication {int /*<<< orphan*/  const* r_nonce; TYPE_1__* curve; int /*<<< orphan*/  k2; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_2__ {size_t nonce_len; int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 size_t AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DPP_ATTR_R_NONCE ; 
 size_t DPP_HDR_LEN ; 
 int DPP_STATUS_AUTH_FAILURE ; 
 int DPP_STATUS_NOT_COMPATIBLE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_authentication*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  const* FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC8(struct dpp_authentication *auth,
				    const u8 *hdr,
				    const u8 *attr_start, size_t attr_len,
				    const u8 *wrapped_data,
				    u16 wrapped_data_len,
				    enum dpp_status_error status)
{
	const u8 *addr[2];
	size_t len[2];
	u8 *unwrapped = NULL;
	size_t unwrapped_len = 0;
	const u8 *r_nonce;
	u16 r_nonce_len;

	/* Authentication Confirm failure cases are expected to include
	 * {R-nonce}k2 in the Wrapped Data attribute. */

	addr[0] = hdr;
	len[0] = DPP_HDR_LEN;
	addr[1] = attr_start;
	len[1] = attr_len;
	FUNC7(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);
	FUNC7(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);
	FUNC7(MSG_DEBUG, "DPP: AES-SIV ciphertext",
		    wrapped_data, wrapped_data_len);
	unwrapped_len = wrapped_data_len - AES_BLOCK_SIZE;
	unwrapped = FUNC5(unwrapped_len);
	if (!unwrapped) {
		FUNC2(auth, "Authentication failed");
		goto fail;
	}
	if (FUNC0(auth->k2, auth->curve->hash_len,
			    wrapped_data, wrapped_data_len,
			    2, addr, len, unwrapped) < 0) {
		FUNC2(auth, "AES-SIV decryption failed");
		goto fail;
	}
	FUNC7(MSG_DEBUG, "DPP: AES-SIV cleartext",
		    unwrapped, unwrapped_len);

	if (FUNC3(unwrapped, unwrapped_len) < 0) {
		FUNC2(auth, "Invalid attribute in unwrapped data");
		goto fail;
	}

	r_nonce = FUNC4(unwrapped, unwrapped_len, DPP_ATTR_R_NONCE,
			       &r_nonce_len);
	if (!r_nonce || r_nonce_len != auth->curve->nonce_len) {
		FUNC2(auth, "DPP: Missing or invalid R-nonce");
		goto fail;
	}
	if (FUNC6(r_nonce, auth->r_nonce, r_nonce_len) != 0) {
		FUNC7(MSG_DEBUG, "DPP: Received R-nonce",
			    r_nonce, r_nonce_len);
		FUNC7(MSG_DEBUG, "DPP: Expected R-nonce",
			    auth->r_nonce, r_nonce_len);
		FUNC2(auth, "R-nonce mismatch");
		goto fail;
	}

	if (status == DPP_STATUS_NOT_COMPATIBLE)
		FUNC2(auth, "Peer reported incompatible R-capab role");
	else if (status == DPP_STATUS_AUTH_FAILURE)
		FUNC2(auth, "Peer reported authentication failure)");

fail:
	FUNC1(unwrapped, unwrapped_len);
	return -1;
}