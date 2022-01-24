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
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int salt_len; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/  my_element; TYPE_1__* grp; void* my_scalar; scalar_t__ salt; void* private_value; scalar_t__ out_frag_pos; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  group; int /*<<< orphan*/  pwe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_bignum*,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,void*,struct crypto_bignum*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC16(struct eap_sm *sm,
				     struct eap_pwd_data *data, u8 id)
{
	struct crypto_bignum *mask = NULL;
	u8 *scalar, *element;
	size_t prime_len, order_len;

	FUNC11(MSG_DEBUG, "EAP-pwd: Commit/Request");
	/*
	 * if we're fragmenting then we already have an commit request, just
	 * return
	 */
	if (data->out_frag_pos)
		return;

	prime_len = FUNC8(data->grp->group);
	order_len = FUNC3(data->grp->group);

	data->private_value = FUNC1();
	data->my_element = FUNC4(data->grp->group);
	data->my_scalar = FUNC1();
	mask = FUNC1();
	if (!data->private_value || !data->my_element || !data->my_scalar ||
	    !mask) {
		FUNC11(MSG_INFO, "EAP-PWD (server): scalar allocation "
			   "fail");
		goto fin;
	}

	if (FUNC9(data->grp, data->private_value, mask,
				  data->my_scalar) < 0)
		goto fin;

	if (FUNC6(data->grp->group, data->grp->pwe, mask,
				data->my_element) < 0) {
		FUNC11(MSG_INFO, "EAP-PWD (server): element allocation "
			   "fail");
		FUNC10(data, FAILURE);
		goto fin;
	}

	if (FUNC5(data->grp->group, data->my_element) < 0) {
		FUNC11(MSG_INFO, "EAP-PWD (server): element inversion "
			   "fail");
		goto fin;
	}

	data->outbuf = FUNC12(2 * prime_len + order_len +
				    (data->salt ? 1 + data->salt_len : 0));
	if (data->outbuf == NULL)
		goto fin;

	/* If we're doing salted password prep, add the salt */
	if (data->salt_len) {
		FUNC15(data->outbuf, data->salt_len);
		FUNC14(data->outbuf, data->salt, data->salt_len);
	}

	/* We send the element as (x,y) followed by the scalar */
	element = FUNC13(data->outbuf, 2 * prime_len);
	scalar = FUNC13(data->outbuf, order_len);
	FUNC2(data->my_scalar, scalar, order_len, order_len);
	if (FUNC7(data->grp->group, data->my_element, element,
				   element + prime_len) < 0) {
		FUNC11(MSG_INFO, "EAP-PWD (server): point assignment "
			   "fail");
		goto fin;
	}

fin:
	FUNC0(mask, 1);
	if (data->outbuf == NULL)
		FUNC10(data, FAILURE);
}