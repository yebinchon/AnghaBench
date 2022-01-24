#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int /*<<< orphan*/  k; TYPE_1__* grp; int /*<<< orphan*/  private_value; int /*<<< orphan*/  peer_element; int /*<<< orphan*/  peer_scalar; int /*<<< orphan*/  my_element; int /*<<< orphan*/  my_scalar; } ;
struct crypto_ec_point {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  group; struct crypto_ec_point* pwe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PWD_Confirm_Req ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct crypto_ec_point*,int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ec_point*,int) ; 
 struct crypto_ec_point* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct crypto_ec_point*,int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct crypto_ec_point*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC15(struct eap_sm *sm, struct eap_pwd_data *data,
			    const u8 *payload, size_t payload_len)
{
	const u8 *ptr;
	struct crypto_ec_point *K = NULL;
	int res = 0;
	size_t prime_len, order_len;

	FUNC14(MSG_DEBUG, "EAP-pwd: Received commit response");

	prime_len = FUNC10(data->grp->group);
	order_len = FUNC2(data->grp->group);

	if (payload_len != 2 * prime_len + order_len) {
		FUNC14(MSG_INFO,
			   "EAP-pwd: Unexpected Commit payload length %u (expected %u)",
			   (unsigned int) payload_len,
			   (unsigned int) (2 * prime_len + order_len));
		goto fin;
	}

	data->k = FUNC1();
	K = FUNC6(data->grp->group);
	if (!data->k || !K) {
		FUNC14(MSG_INFO, "EAP-PWD (server): peer data allocation "
			   "fail");
		goto fin;
	}

	/* element, x then y, followed by scalar */
	ptr = payload;
	data->peer_element = FUNC11(data->grp, ptr);
	if (!data->peer_element) {
		FUNC14(MSG_INFO, "EAP-PWD (server): setting peer element "
			   "fail");
		goto fin;
	}
	ptr += prime_len * 2;
	data->peer_scalar = FUNC12(data->grp, ptr);
	if (!data->peer_scalar) {
		FUNC14(MSG_INFO, "EAP-PWD (server): peer data allocation "
			   "fail");
		goto fin;
	}

	/* detect reflection attacks */
	if (FUNC0(data->my_scalar, data->peer_scalar) == 0 ||
	    FUNC4(data->grp->group, data->my_element,
				data->peer_element) == 0) {
		FUNC14(MSG_INFO,
			   "EAP-PWD (server): detected reflection attack!");
		goto fin;
	}

	/* compute the shared key, k */
	if ((FUNC8(data->grp->group, data->grp->pwe,
				 data->peer_scalar, K) < 0) ||
	    (FUNC3(data->grp->group, K, data->peer_element,
				 K) < 0) ||
	    (FUNC8(data->grp->group, K, data->private_value,
				 K) < 0)) {
		FUNC14(MSG_INFO, "EAP-PWD (server): computing shared key "
			   "fail");
		goto fin;
	}

	/*
	 * This check is strictly speaking just for the case where
	 * co-factor > 1 but it was suggested that even though this is probably
	 * never going to happen it is a simple and safe check "just to be
	 * sure" so let's be safe.
	 */
	if (FUNC7(data->grp->group, K)) {
		FUNC14(MSG_INFO, "EAP-PWD (server): shared key point is "
			   "at infinity");
		goto fin;
	}
	if (FUNC9(data->grp->group, K, data->k)) {
		FUNC14(MSG_INFO, "EAP-PWD (server): unable to extract "
			   "shared secret from secret point");
		goto fin;
	}
	res = 1;

fin:
	FUNC5(K, 1);

	if (res)
		FUNC13(data, PWD_Confirm_Req);
	else
		FUNC13(data, FAILURE);
}