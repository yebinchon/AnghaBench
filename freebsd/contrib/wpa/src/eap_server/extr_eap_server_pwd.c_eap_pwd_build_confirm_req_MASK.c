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
typedef  int /*<<< orphan*/  u16 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int /*<<< orphan*/ * outbuf; int /*<<< orphan*/ * my_confirm; int /*<<< orphan*/  group_num; int /*<<< orphan*/  peer_scalar; int /*<<< orphan*/  peer_element; TYPE_1__* grp; int /*<<< orphan*/  my_scalar; int /*<<< orphan*/  my_element; int /*<<< orphan*/  k; scalar_t__ out_frag_pos; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_PWD_DEFAULT_PRF ; 
 int /*<<< orphan*/  EAP_PWD_DEFAULT_RAND_FUNC ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_hash*,int /*<<< orphan*/ *) ; 
 struct crypto_hash* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_hash*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC16(struct eap_sm *sm,
				      struct eap_pwd_data *data, u8 id)
{
	struct crypto_hash *hash = NULL;
	u8 conf[SHA256_MAC_LEN], *cruft = NULL, *ptr;
	u16 grp;
	size_t prime_len, order_len;

	FUNC13(MSG_DEBUG, "EAP-pwd: Confirm/Request");
	/*
	 * if we're fragmenting then we already have an confirm request, just
	 * return
	 */
	if (data->out_frag_pos)
		return;

	prime_len = FUNC4(data->grp->group);
	order_len = FUNC2(data->grp->group);

	/* Each component of the cruft will be at most as big as the prime */
	cruft = FUNC10(prime_len * 2);
	if (!cruft) {
		FUNC13(MSG_INFO, "EAP-PWD (server): debug allocation "
			   "fail");
		goto fin;
	}

	/*
	 * commit is H(k | server_element | server_scalar | peer_element |
	 *	       peer_scalar | ciphersuite)
	 */
	hash = FUNC6();
	if (hash == NULL)
		goto fin;

	/*
	 * Zero the memory each time because this is mod prime math and some
	 * value may start with a few zeros and the previous one did not.
	 *
	 * First is k
	 */
	FUNC1(data->k, cruft, prime_len, prime_len);
	FUNC7(hash, cruft, prime_len);

	/* server element: x, y */
	if (FUNC3(data->grp->group, data->my_element, cruft,
				   cruft + prime_len) < 0) {
		FUNC13(MSG_INFO, "EAP-PWD (server): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC7(hash, cruft, prime_len * 2);

	/* server scalar */
	FUNC1(data->my_scalar, cruft, order_len, order_len);
	FUNC7(hash, cruft, order_len);

	/* peer element: x, y */
	if (FUNC3(data->grp->group, data->peer_element, cruft,
				   cruft + prime_len) < 0) {
		FUNC13(MSG_INFO, "EAP-PWD (server): confirm point "
			   "assignment fail");
		goto fin;
	}
	FUNC7(hash, cruft, prime_len * 2);

	/* peer scalar */
	FUNC1(data->peer_scalar, cruft, order_len, order_len);
	FUNC7(hash, cruft, order_len);

	/* ciphersuite */
	grp = FUNC9(data->group_num);
	FUNC12(cruft, 0, prime_len);
	ptr = cruft;
	FUNC11(ptr, &grp, sizeof(u16));
	ptr += sizeof(u16);
	*ptr = EAP_PWD_DEFAULT_RAND_FUNC;
	ptr += sizeof(u8);
	*ptr = EAP_PWD_DEFAULT_PRF;
	ptr += sizeof(u8);
	FUNC7(hash, cruft, ptr - cruft);

	/* all done with the random function */
	FUNC5(hash, conf);
	hash = NULL;
	FUNC11(data->my_confirm, conf, SHA256_MAC_LEN);

	data->outbuf = FUNC14(SHA256_MAC_LEN);
	if (data->outbuf == NULL)
		goto fin;

	FUNC15(data->outbuf, conf, SHA256_MAC_LEN);

fin:
	FUNC0(cruft, prime_len * 2);
	if (data->outbuf == NULL)
		FUNC8(data, FAILURE);
	FUNC5(hash, NULL);
}