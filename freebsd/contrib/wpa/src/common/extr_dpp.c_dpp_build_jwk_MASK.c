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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct dpp_curve_params {char* jwk_crv; int /*<<< orphan*/  prime_len; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,char const*) ; 

__attribute__((used)) static int FUNC6(struct wpabuf *buf, const char *name, EVP_PKEY *key,
			 const char *kid, const struct dpp_curve_params *curve)
{
	struct wpabuf *pub;
	const u8 *pos;
	char *x = NULL, *y = NULL;
	int ret = -1;

	pub = FUNC1(key, 0);
	if (!pub)
		goto fail;
	pos = FUNC4(pub);
	x = (char *) FUNC0(pos, curve->prime_len, NULL, 0);
	pos += curve->prime_len;
	y = (char *) FUNC0(pos, curve->prime_len, NULL, 0);
	if (!x || !y)
		goto fail;

	FUNC5(buf, "\"");
	FUNC5(buf, name);
	FUNC5(buf, "\":{\"kty\":\"EC\",\"crv\":\"");
	FUNC5(buf, curve->jwk_crv);
	FUNC5(buf, "\",\"x\":\"");
	FUNC5(buf, x);
	FUNC5(buf, "\",\"y\":\"");
	FUNC5(buf, y);
	if (kid) {
		FUNC5(buf, "\",\"kid\":\"");
		FUNC5(buf, kid);
	}
	FUNC5(buf, "\"}");
	ret = 0;
fail:
	FUNC3(pub);
	FUNC2(x);
	FUNC2(y);
	return ret;
}