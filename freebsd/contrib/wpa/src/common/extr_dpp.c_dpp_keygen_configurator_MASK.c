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
struct dpp_configurator {int own; char* kid; int /*<<< orphan*/  csign; int /*<<< orphan*/ * curve; } ;
typedef  int /*<<< orphan*/  kid_hash ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SHA256_MAC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_configurator*) ; 
 int /*<<< orphan*/ * dpp_curves ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct wpabuf* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct dpp_configurator*) ; 
 struct dpp_configurator* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC11 (struct wpabuf*) ; 
 size_t FUNC12 (struct wpabuf*) ; 

struct dpp_configurator *
FUNC13(const char *curve, const u8 *privkey,
			size_t privkey_len)
{
	struct dpp_configurator *conf;
	struct wpabuf *csign_pub = NULL;
	u8 kid_hash[SHA256_MAC_LEN];
	const u8 *addr[1];
	size_t len[1];

	conf = FUNC7(sizeof(*conf));
	if (!conf)
		return NULL;

	if (!curve) {
		conf->curve = &dpp_curves[0];
	} else {
		conf->curve = FUNC3(curve);
		if (!conf->curve) {
			FUNC9(MSG_INFO, "DPP: Unsupported curve: %s",
				   curve);
			FUNC6(conf);
			return NULL;
		}
	}
	if (privkey)
		conf->csign = FUNC5(&conf->curve, privkey,
					      privkey_len);
	else
		conf->csign = FUNC2(conf->curve);
	if (!conf->csign)
		goto fail;
	conf->own = 1;

	csign_pub = FUNC4(conf->csign, 1);
	if (!csign_pub) {
		FUNC9(MSG_INFO, "DPP: Failed to extract C-sign-key");
		goto fail;
	}

	/* kid = SHA256(ANSI X9.63 uncompressed C-sign-key) */
	addr[0] = FUNC11(csign_pub);
	len[0] = FUNC12(csign_pub);
	if (FUNC8(1, addr, len, kid_hash) < 0) {
		FUNC9(MSG_DEBUG,
			   "DPP: Failed to derive kid for C-sign-key");
		goto fail;
	}

	conf->kid = (char *) FUNC0(kid_hash, sizeof(kid_hash),
					       NULL, 0);
	if (!conf->kid)
		goto fail;
out:
	FUNC10(csign_pub);
	return conf;
fail:
	FUNC1(conf);
	conf = NULL;
	goto out;
}