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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {scalar_t__ state; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/  session_id; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  server_scalar; int /*<<< orphan*/  my_scalar; int /*<<< orphan*/  k; TYPE_1__* grp; int /*<<< orphan*/  server_element; int /*<<< orphan*/  my_element; int /*<<< orphan*/  group_num; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; int /*<<< orphan*/  ignore; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_PWD_DEFAULT_PRF ; 
 int /*<<< orphan*/  EAP_PWD_DEFAULT_RAND_FUNC ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ PWD_Confirm_Req ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  SUCCESS_ON_FRAG_COMPLETION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_hash*,int /*<<< orphan*/ *) ; 
 struct crypto_hash* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_hash*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC17(struct eap_sm *sm, struct eap_pwd_data *data,
				 struct eap_method_ret *ret,
				 const struct wpabuf *reqData,
				 const u8 *payload, size_t payload_len)
{
	struct crypto_hash *hash = NULL;
	u32 cs;
	u16 grp;
	u8 conf[SHA256_MAC_LEN], *cruft = NULL, *ptr;
	size_t prime_len = 0, order_len = 0;

	if (data->state != PWD_Confirm_Req) {
		ret->ignore = TRUE;
		goto fin;
	}

	if (payload_len != SHA256_MAC_LEN) {
		FUNC14(MSG_INFO,
			   "EAP-pwd: Unexpected Confirm payload length %u (expected %u)",
			   (unsigned int) payload_len, SHA256_MAC_LEN);
		goto fin;
	}

	prime_len = FUNC5(data->grp->group);
	order_len = FUNC3(data->grp->group);

	/*
	 * first build up the ciphersuite which is group | random_function |
	 *	prf
	 */
	grp = FUNC10(data->group_num);
	ptr = (u8 *) &cs;
	FUNC13(ptr, &grp, sizeof(u16));
	ptr += sizeof(u16);
	*ptr = EAP_PWD_DEFAULT_RAND_FUNC;
	ptr += sizeof(u8);
	*ptr = EAP_PWD_DEFAULT_PRF;

	/* each component of the point will be at most as big as the prime */
	cruft = FUNC11(prime_len * 2);
	if (!cruft) {
		FUNC14(MSG_INFO, "EAP-PWD (server): confirm allocation "
			   "fail");
		goto fin;
	}

	/*
	 * server's commit is H(k | server_element | server_scalar |
	 *			peer_element | peer_scalar | ciphersuite)
	 */
	hash = FUNC7();
	if (hash == NULL)
		goto fin;

	/*
	 * zero the memory each time because this is mod prime math and some
	 * value may start with a few zeros and the previous one did not.
	 */
	FUNC2(data->k, cruft, prime_len, prime_len);
	FUNC8(hash, cruft, prime_len);

	/* server element: x, y */
	if (FUNC4(data->grp->group, data->server_element,
				   cruft, cruft + prime_len) != 0) {
		FUNC14(MSG_INFO, "EAP-PWD (server): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC8(hash, cruft, prime_len * 2);

	/* server scalar */
	FUNC2(data->server_scalar, cruft, order_len, order_len);
	FUNC8(hash, cruft, order_len);

	/* my element: x, y */
	if (FUNC4(data->grp->group, data->my_element, cruft,
				   cruft + prime_len) != 0) {
		FUNC14(MSG_INFO, "EAP-PWD (server): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC8(hash, cruft, prime_len * 2);

	/* my scalar */
	FUNC2(data->my_scalar, cruft, order_len, order_len);
	FUNC8(hash, cruft, order_len);

	/* the ciphersuite */
	FUNC8(hash, (u8 *) &cs, sizeof(u32));

	/* random function fin */
	FUNC6(hash, conf);
	hash = NULL;

	ptr = (u8 *) payload;
	if (FUNC12(conf, ptr, SHA256_MAC_LEN)) {
		FUNC14(MSG_INFO, "EAP-PWD (peer): confirm did not verify");
		goto fin;
	}

	FUNC14(MSG_DEBUG, "EAP-pwd (peer): confirm verified");

	/*
	 * compute confirm:
	 *  H(k | peer_element | peer_scalar | server_element | server_scalar |
	 *    ciphersuite)
	 */
	hash = FUNC7();
	if (hash == NULL)
		goto fin;

	/* k */
	FUNC2(data->k, cruft, prime_len, prime_len);
	FUNC8(hash, cruft, prime_len);

	/* my element */
	if (FUNC4(data->grp->group, data->my_element, cruft,
				   cruft + prime_len) != 0) {
		FUNC14(MSG_INFO, "EAP-PWD (peer): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC8(hash, cruft, prime_len * 2);

	/* my scalar */
	FUNC2(data->my_scalar, cruft, order_len, order_len);
	FUNC8(hash, cruft, order_len);

	/* server element: x, y */
	if (FUNC4(data->grp->group, data->server_element,
				   cruft, cruft + prime_len) != 0) {
		FUNC14(MSG_INFO, "EAP-PWD (peer): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC8(hash, cruft, prime_len * 2);

	/* server scalar */
	FUNC2(data->server_scalar, cruft, order_len, order_len);
	FUNC8(hash, cruft, order_len);

	/* the ciphersuite */
	FUNC8(hash, (u8 *) &cs, sizeof(u32));

	/* all done */
	FUNC6(hash, conf);
	hash = NULL;

	if (FUNC1(data->grp, data->k,
			 data->my_scalar, data->server_scalar, conf, ptr,
			 &cs, data->msk, data->emsk, data->session_id) < 0) {
		FUNC14(MSG_INFO, "EAP-PWD (peer): unable to compute MSK | "
			   "EMSK");
		goto fin;
	}

	data->outbuf = FUNC15(SHA256_MAC_LEN);
	if (data->outbuf == NULL)
		goto fin;

	FUNC16(data->outbuf, conf, SHA256_MAC_LEN);

fin:
	FUNC0(cruft, prime_len * 2);
	if (data->outbuf == NULL) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		FUNC9(data, FAILURE);
	} else {
		FUNC9(data, SUCCESS_ON_FRAG_COMPLETION);
	}

	/* clean allocated memory */
	if (hash)
		FUNC6(hash, conf);
}