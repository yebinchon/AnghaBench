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
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int /*<<< orphan*/  session_id; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  my_confirm; int /*<<< orphan*/  my_scalar; int /*<<< orphan*/  peer_scalar; int /*<<< orphan*/  k; TYPE_1__* grp; int /*<<< orphan*/  my_element; int /*<<< orphan*/  peer_element; int /*<<< orphan*/  group_num; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_PWD_DEFAULT_PRF ; 
 int /*<<< orphan*/  EAP_PWD_DEFAULT_RAND_FUNC ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static void
FUNC15(struct eap_sm *sm, struct eap_pwd_data *data,
			     const u8 *payload, size_t payload_len)
{
	struct crypto_hash *hash = NULL;
	u32 cs;
	u16 grp;
	u8 conf[SHA256_MAC_LEN], *cruft = NULL, *ptr;
	size_t prime_len, order_len;

	prime_len = FUNC5(data->grp->group);
	order_len = FUNC3(data->grp->group);

	if (payload_len != SHA256_MAC_LEN) {
		FUNC14(MSG_INFO,
			   "EAP-pwd: Unexpected Confirm payload length %u (expected %u)",
			   (unsigned int) payload_len, SHA256_MAC_LEN);
		goto fin;
	}

	/* build up the ciphersuite: group | random_function | prf */
	grp = FUNC10(data->group_num);
	ptr = (u8 *) &cs;
	FUNC13(ptr, &grp, sizeof(u16));
	ptr += sizeof(u16);
	*ptr = EAP_PWD_DEFAULT_RAND_FUNC;
	ptr += sizeof(u8);
	*ptr = EAP_PWD_DEFAULT_PRF;

	/* each component of the cruft will be at most as big as the prime */
	cruft = FUNC11(prime_len * 2);
	if (!cruft) {
		FUNC14(MSG_INFO, "EAP-PWD (peer): allocation fail");
		goto fin;
	}

	/*
	 * commit is H(k | peer_element | peer_scalar | server_element |
	 *	       server_scalar | ciphersuite)
	 */
	hash = FUNC7();
	if (hash == NULL)
		goto fin;

	/* k */
	FUNC2(data->k, cruft, prime_len, prime_len);
	FUNC8(hash, cruft, prime_len);

	/* peer element: x, y */
	if (FUNC4(data->grp->group, data->peer_element, cruft,
				   cruft + prime_len) < 0) {
		FUNC14(MSG_INFO, "EAP-PWD (server): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC8(hash, cruft, prime_len * 2);

	/* peer scalar */
	FUNC2(data->peer_scalar, cruft, order_len, order_len);
	FUNC8(hash, cruft, order_len);

	/* server element: x, y */
	if (FUNC4(data->grp->group, data->my_element, cruft,
				   cruft + prime_len) < 0) {
		FUNC14(MSG_INFO, "EAP-PWD (server): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC8(hash, cruft, prime_len * 2);

	/* server scalar */
	FUNC2(data->my_scalar, cruft, order_len, order_len);
	FUNC8(hash, cruft, order_len);

	/* ciphersuite */
	FUNC8(hash, (u8 *) &cs, sizeof(u32));

	/* all done */
	FUNC6(hash, conf);
	hash = NULL;

	ptr = (u8 *) payload;
	if (FUNC12(conf, ptr, SHA256_MAC_LEN)) {
		FUNC14(MSG_INFO, "EAP-PWD (server): confirm did not "
			   "verify");
		goto fin;
	}

	FUNC14(MSG_DEBUG, "EAP-pwd (server): confirm verified");
	if (FUNC1(data->grp, data->k,
			 data->peer_scalar, data->my_scalar, conf,
			 data->my_confirm, &cs, data->msk, data->emsk,
			 data->session_id) < 0)
		FUNC9(data, FAILURE);
	else
		FUNC9(data, SUCCESS);

fin:
	FUNC0(cruft, prime_len * 2);
	FUNC6(hash, NULL);
}