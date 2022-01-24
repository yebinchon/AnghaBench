#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int) ; 

struct wpabuf * FUNC10(void *ctx, const struct wpabuf *peer_public,
				  const struct wpabuf *own_private)
{
	BIGNUM *pub_key;
	struct wpabuf *res = NULL;
	size_t rlen;
	DH *dh = ctx;
	int keylen;

	if (ctx == NULL)
		return NULL;

	pub_key = FUNC0(FUNC6(peer_public), FUNC7(peer_public),
			    NULL);
	if (pub_key == NULL)
		return NULL;

	rlen = FUNC3(dh);
	res = FUNC4(rlen);
	if (res == NULL)
		goto err;

	keylen = FUNC2(FUNC8(res), pub_key, dh);
	if (keylen < 0)
		goto err;
	FUNC9(res, keylen);
	FUNC1(pub_key);

	return res;

err:
	FUNC1(pub_key);
	FUNC5(res);
	return NULL;
}