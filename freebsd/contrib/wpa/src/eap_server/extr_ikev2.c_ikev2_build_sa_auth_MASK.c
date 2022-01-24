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
struct TYPE_2__ {int /*<<< orphan*/  integ; int /*<<< orphan*/  encr; } ;
struct ikev2_initiator_data {int unknown_user; int shared_secret_len; int /*<<< orphan*/  keys; TYPE_1__ proposal; int /*<<< orphan*/  IDr_len; int /*<<< orphan*/ * shared_secret; int /*<<< orphan*/  IDr; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/ * (* get_shared_secret ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ;} ;
struct ikev2_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_PAYLOAD_AUTHENTICATION ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_ENCRYPTED ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_IDi ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ; 
 int /*<<< orphan*/  IKE_SA_AUTH ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct wpabuf*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct ikev2_initiator_data *data)
{
	struct wpabuf *msg, *plain;
	const u8 *secret;
	size_t secret_len;

	secret = data->get_shared_secret(data->cb_ctx, data->IDr,
					 data->IDr_len, &secret_len);
	if (secret == NULL) {
		FUNC10(MSG_INFO, "IKEV2: Could not get shared secret - "
			   "use fake value");
		/* RFC 5106, Sect. 7:
		 * Use a random key to fake AUTH generation in order to prevent
		 * probing of user identities.
		 */
		data->unknown_user = 1;
		FUNC4(data->shared_secret);
		data->shared_secret = FUNC5(16);
		if (data->shared_secret == NULL)
			return NULL;
		data->shared_secret_len = 16;
		if (FUNC7(data->shared_secret, 16))
			return NULL;
	} else {
		FUNC4(data->shared_secret);
		data->shared_secret = FUNC6(secret, secret_len);
		if (data->shared_secret == NULL)
			return NULL;
		data->shared_secret_len = secret_len;
	}

	/* build IKE_SA_AUTH: HDR, SK {IDi, [CERT,] [CERTREQ,] AUTH} */

	msg = FUNC11(sizeof(struct ikev2_hdr) + data->IDr_len + 1000);
	if (msg == NULL)
		return NULL;
	FUNC2(data, msg, IKE_SA_AUTH, IKEV2_PAYLOAD_ENCRYPTED, 1);

	plain = FUNC11(data->IDr_len + 1000);
	if (plain == NULL) {
		FUNC12(msg);
		return NULL;
	}

	if (FUNC3(data, plain, IKEV2_PAYLOAD_AUTHENTICATION) ||
	    FUNC0(data, plain, IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
	    FUNC1(data->proposal.encr, data->proposal.integ,
				  &data->keys, 1, msg, plain,
				  IKEV2_PAYLOAD_IDi)) {
		FUNC12(plain);
		FUNC12(msg);
		return NULL;
	}
	FUNC12(plain);

	FUNC9(MSG_MSGDUMP, "IKEV2: Sending message (SA_AUTH)", msg);

	return msg;
}