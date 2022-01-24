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
typedef  scalar_t__ u8 ;
struct ikev2_prf_alg {size_t hash_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  prf; } ;
struct ikev2_initiator_data {TYPE_1__ proposal; int /*<<< orphan*/ * r_sign_msg; int /*<<< orphan*/  key_pad_len; int /*<<< orphan*/  key_pad; int /*<<< orphan*/  i_nonce_len; int /*<<< orphan*/  i_nonce; int /*<<< orphan*/  shared_secret_len; int /*<<< orphan*/  shared_secret; int /*<<< orphan*/  keys; int /*<<< orphan*/  IDr_type; int /*<<< orphan*/  IDr_len; int /*<<< orphan*/  IDr; } ;

/* Variables and functions */
 scalar_t__ AUTH_SHARED_KEY_MIC ; 
 int IKEV2_MAX_HASH_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct ikev2_prf_alg* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__ const*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ikev2_initiator_data *data,
				     u8 method, const u8 *auth,
				     size_t auth_len)
{
	u8 auth_data[IKEV2_MAX_HASH_LEN];
	const struct ikev2_prf_alg *prf;

	if (method != AUTH_SHARED_KEY_MIC) {
		FUNC4(MSG_INFO, "IKEV2: Unsupported authentication "
			   "method %d", method);
		return -1;
	}

	/* msg | Ni | prf(SK_pr,IDr') */
	if (FUNC0(data->proposal.prf, data->r_sign_msg,
				   data->IDr, data->IDr_len, data->IDr_type,
				   &data->keys, 0, data->shared_secret,
				   data->shared_secret_len,
				   data->i_nonce, data->i_nonce_len,
				   data->key_pad, data->key_pad_len,
				   auth_data) < 0) {
		FUNC4(MSG_INFO, "IKEV2: Could not derive AUTH data");
		return -1;
	}

	FUNC5(data->r_sign_msg);
	data->r_sign_msg = NULL;

	prf = FUNC1(data->proposal.prf);
	if (prf == NULL)
		return -1;

	if (auth_len != prf->hash_len ||
	    FUNC2(auth, auth_data, auth_len) != 0) {
		FUNC4(MSG_INFO, "IKEV2: Invalid Authentication Data");
		FUNC3(MSG_DEBUG, "IKEV2: Received Authentication Data",
			    auth, auth_len);
		FUNC3(MSG_DEBUG, "IKEV2: Expected Authentication Data",
			    auth_data, prf->hash_len);
		return -1;
	}

	FUNC4(MSG_DEBUG, "IKEV2: Peer authenticated successfully "
		   "using shared keys");

	return 0;
}