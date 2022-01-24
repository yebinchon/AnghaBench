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
struct dh_group {size_t prime_len; int /*<<< orphan*/  prime; int /*<<< orphan*/ * generator; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,size_t) ; 

struct wpabuf * FUNC8(const struct dh_group *dh, struct wpabuf **priv)
{
	struct wpabuf *pv;
	size_t pv_len;

	if (dh == NULL)
		return NULL;

	FUNC5(*priv);
	*priv = FUNC4(dh->prime_len);
	if (*priv == NULL)
		return NULL;

	pv_len = dh->prime_len;
	pv = FUNC4(pv_len);
	if (pv == NULL) {
		FUNC5(*priv);
		*priv = NULL;
		return NULL;
	}
	if (FUNC0(*dh->generator, dh->prime, dh->prime_len,
			   FUNC6(*priv), FUNC6(pv)) < 0) {
		FUNC5(pv);
		FUNC3(MSG_INFO, "DH: crypto_dh_init failed");
		FUNC5(*priv);
		*priv = NULL;
		return NULL;
	}
	FUNC7(*priv, dh->prime_len);
	FUNC7(pv, dh->prime_len);
	FUNC2(MSG_DEBUG, "DH: private value", *priv);
	FUNC1(MSG_DEBUG, "DH: public value", pv);

	return pv;
}