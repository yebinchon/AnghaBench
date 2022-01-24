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
struct dh_group {size_t prime_len; int /*<<< orphan*/  order_len; int /*<<< orphan*/  order; int /*<<< orphan*/  prime; int /*<<< orphan*/ * generator; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,size_t) ; 

struct wpabuf * FUNC9(const struct wpabuf *peer_public,
				 const struct wpabuf *own_private,
				 const struct dh_group *dh)
{
	struct wpabuf *shared;
	size_t shared_len;

	if (dh == NULL || peer_public == NULL || own_private == NULL)
		return NULL;

	shared_len = dh->prime_len;
	shared = FUNC3(shared_len);
	if (shared == NULL)
		return NULL;
	if (FUNC0(*dh->generator, dh->prime, dh->prime_len,
				    dh->order, dh->order_len,
				    FUNC5(own_private),
				    FUNC6(own_private),
				    FUNC5(peer_public),
				    FUNC6(peer_public),
				    FUNC7(shared), &shared_len) < 0) {
		FUNC4(shared);
		FUNC2(MSG_INFO, "DH: crypto_dh_derive_secret failed");
		return NULL;
	}
	FUNC8(shared, shared_len);
	FUNC1(MSG_DEBUG, "DH: shared key", shared);

	return shared;
}