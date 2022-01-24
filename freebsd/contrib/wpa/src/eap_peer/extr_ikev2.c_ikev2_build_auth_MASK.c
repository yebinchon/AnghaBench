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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prf; } ;
struct ikev2_responder_data {int /*<<< orphan*/ * r_sign_msg; int /*<<< orphan*/  key_pad_len; int /*<<< orphan*/  key_pad; int /*<<< orphan*/  i_nonce_len; int /*<<< orphan*/  i_nonce; int /*<<< orphan*/  shared_secret_len; int /*<<< orphan*/  shared_secret; int /*<<< orphan*/  keys; int /*<<< orphan*/  IDr_len; int /*<<< orphan*/  IDr; TYPE_1__ proposal; } ;
struct ikev2_prf_alg {int hash_len; } ;
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_SHARED_KEY_MIC ; 
 int /*<<< orphan*/  ID_KEY_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ikev2_payload_hdr*) ; 
 struct ikev2_prf_alg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ikev2_payload_hdr* FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ikev2_responder_data *data,
			    struct wpabuf *msg, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;
	const struct ikev2_prf_alg *prf;

	FUNC3(MSG_DEBUG, "IKEV2: Adding AUTH payload");

	prf = FUNC2(data->proposal.prf);
	if (prf == NULL)
		return -1;

	/* Authentication - RFC 4306, Sect. 3.8 */
	phdr = FUNC5(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;
	FUNC6(msg, AUTH_SHARED_KEY_MIC);
	FUNC5(msg, 3); /* RESERVED */

	/* msg | Ni | prf(SK_pr,IDr') */
	if (FUNC1(data->proposal.prf, data->r_sign_msg,
				   data->IDr, data->IDr_len, ID_KEY_ID,
				   &data->keys, 0, data->shared_secret,
				   data->shared_secret_len,
				   data->i_nonce, data->i_nonce_len,
				   data->key_pad, data->key_pad_len,
				   FUNC5(msg, prf->hash_len)) < 0) {
		FUNC3(MSG_INFO, "IKEV2: Could not derive AUTH data");
		return -1;
	}
	FUNC4(data->r_sign_msg);
	data->r_sign_msg = NULL;

	plen = (u8 *) FUNC5(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);
	return 0;
}