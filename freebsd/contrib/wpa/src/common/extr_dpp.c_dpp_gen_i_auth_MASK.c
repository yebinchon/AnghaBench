#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int const u8 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {int* r_nonce; int* i_nonce; TYPE_3__* curve; TYPE_2__* own_bi; TYPE_1__* peer_bi; int /*<<< orphan*/  own_protocol_key; int /*<<< orphan*/  peer_protocol_key; scalar_t__ initiator; } ;
struct TYPE_6__ {size_t nonce_len; size_t hash_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  pubkey; } ;
struct TYPE_4__ {int /*<<< orphan*/  pubkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,size_t,int const**,size_t*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int* FUNC5 (struct wpabuf*) ; 
 int FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC7(struct dpp_authentication *auth, u8 *i_auth)
{
	struct wpabuf *pix = NULL, *prx = NULL, *bix = NULL, *brx = NULL;
	const u8 *addr[7];
	size_t len[7];
	size_t i, num_elem = 0;
	size_t nonce_len;
	u8 one = 1;
	int res = -1;

	/* I-auth = H(R-nonce | I-nonce | PR.x | PI.x | BR.x | [BI.x |] 1) */
	nonce_len = auth->curve->nonce_len;

	if (auth->initiator) {
		pix = FUNC0(auth->own_protocol_key, 0);
		prx = FUNC0(auth->peer_protocol_key, 0);
		if (auth->own_bi)
			bix = FUNC0(auth->own_bi->pubkey, 0);
		else
			bix = NULL;
		if (!auth->peer_bi)
			goto fail;
		brx = FUNC0(auth->peer_bi->pubkey, 0);
	} else {
		pix = FUNC0(auth->peer_protocol_key, 0);
		prx = FUNC0(auth->own_protocol_key, 0);
		if (auth->peer_bi)
			bix = FUNC0(auth->peer_bi->pubkey, 0);
		else
			bix = NULL;
		if (!auth->own_bi)
			goto fail;
		brx = FUNC0(auth->own_bi->pubkey, 0);
	}
	if (!pix || !prx || !brx)
		goto fail;

	addr[num_elem] = auth->r_nonce;
	len[num_elem] = nonce_len;
	num_elem++;

	addr[num_elem] = auth->i_nonce;
	len[num_elem] = nonce_len;
	num_elem++;

	addr[num_elem] = FUNC5(prx);
	len[num_elem] = FUNC6(prx) / 2;
	num_elem++;

	addr[num_elem] = FUNC5(pix);
	len[num_elem] = FUNC6(pix) / 2;
	num_elem++;

	addr[num_elem] = FUNC5(brx);
	len[num_elem] = FUNC6(brx) / 2;
	num_elem++;

	if (bix) {
		addr[num_elem] = FUNC5(bix);
		len[num_elem] = FUNC6(bix) / 2;
		num_elem++;
	}

	addr[num_elem] = &one;
	len[num_elem] = 1;
	num_elem++;

	FUNC3(MSG_DEBUG, "DPP: I-auth hash components");
	for (i = 0; i < num_elem; i++)
		FUNC2(MSG_DEBUG, "DPP: hash component", addr[i], len[i]);
	res = FUNC1(auth->curve, num_elem, addr, len, i_auth);
	if (res == 0)
		FUNC2(MSG_DEBUG, "DPP: I-auth", i_auth,
			    auth->curve->hash_len);
fail:
	FUNC4(pix);
	FUNC4(prx);
	FUNC4(bix);
	FUNC4(brx);
	return res;
}