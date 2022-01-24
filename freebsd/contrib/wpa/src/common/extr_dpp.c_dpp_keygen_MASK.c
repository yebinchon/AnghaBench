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
struct dpp_bootstrap_info {int own; int /*<<< orphan*/  pubkey_hash; int /*<<< orphan*/  pubkey; int /*<<< orphan*/ * curve; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SHA256_MAC_LEN ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ *,size_t,size_t*) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dpp_curves ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC13 (struct wpabuf*) ; 
 size_t FUNC14 (struct wpabuf*) ; 

char * FUNC15(struct dpp_bootstrap_info *bi, const char *curve,
		  const u8 *privkey, size_t privkey_len)
{
	unsigned char *base64 = NULL;
	char *pos, *end;
	size_t len;
	struct wpabuf *der = NULL;
	const u8 *addr[1];
	int res;

	if (!curve) {
		bi->curve = &dpp_curves[0];
	} else {
		bi->curve = FUNC3(curve);
		if (!bi->curve) {
			FUNC11(MSG_INFO, "DPP: Unsupported curve: %s",
				   curve);
			return NULL;
		}
	}
	if (privkey)
		bi->pubkey = FUNC4(&bi->curve, privkey, privkey_len);
	else
		bi->pubkey = FUNC2(bi->curve);
	if (!bi->pubkey)
		goto fail;
	bi->own = 1;

	der = FUNC1(bi->pubkey);
	if (!der)
		goto fail;
	FUNC10(MSG_DEBUG, "DPP: Compressed public key (DER)",
			der);

	addr[0] = FUNC13(der);
	len = FUNC14(der);
	res = FUNC8(1, addr, &len, bi->pubkey_hash);
	if (res < 0) {
		FUNC11(MSG_DEBUG, "DPP: Failed to hash public key");
		goto fail;
	}
	FUNC9(MSG_DEBUG, "DPP: Public key hash", bi->pubkey_hash,
		    SHA256_MAC_LEN);

	base64 = FUNC0(FUNC13(der), FUNC14(der), &len);
	FUNC12(der);
	der = NULL;
	if (!base64)
		goto fail;
	pos = (char *) base64;
	end = pos + len;
	for (;;) {
		pos = FUNC7(pos, '\n');
		if (!pos)
			break;
		FUNC6(pos, pos + 1, end - pos);
	}
	return (char *) base64;
fail:
	FUNC5(base64);
	FUNC12(der);
	return NULL;
}