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
struct dpp_global {int /*<<< orphan*/  bootstrap; } ;
struct dpp_bootstrap_info {int id; int /*<<< orphan*/  list; void* uri; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_BOOTSTRAP_PKEX ; 
 int /*<<< orphan*/  DPP_BOOTSTRAP_QR_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_bootstrap_info*) ; 
 char* FUNC3 (struct dpp_bootstrap_info*,char*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (struct dpp_global*) ; 
 scalar_t__ FUNC5 (struct dpp_bootstrap_info*,char*) ; 
 scalar_t__ FUNC6 (struct dpp_bootstrap_info*,char*) ; 
 scalar_t__ FUNC7 (struct dpp_bootstrap_info*,char*) ; 
 char* FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (void*,size_t,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 struct dpp_bootstrap_info* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(struct dpp_global *dpp, const char *cmd)
{
	char *chan = NULL, *mac = NULL, *info = NULL, *pk = NULL, *curve = NULL;
	char *key = NULL;
	u8 *privkey = NULL;
	size_t privkey_len = 0;
	size_t len;
	int ret = -1;
	struct dpp_bootstrap_info *bi;

	if (!dpp)
		return -1;

	bi = FUNC15(sizeof(*bi));
	if (!bi)
		goto fail;

	if (FUNC14(cmd, "type=qrcode"))
		bi->type = DPP_BOOTSTRAP_QR_CODE;
	else if (FUNC14(cmd, "type=pkex"))
		bi->type = DPP_BOOTSTRAP_PKEX;
	else
		goto fail;

	chan = FUNC8(cmd, " chan=");
	mac = FUNC8(cmd, " mac=");
	info = FUNC8(cmd, " info=");
	curve = FUNC8(cmd, " curve=");
	key = FUNC8(cmd, " key=");

	if (key) {
		privkey_len = FUNC13(key) / 2;
		privkey = FUNC11(privkey_len);
		if (!privkey ||
		    FUNC9(key, privkey, privkey_len) < 0)
			goto fail;
	}

	pk = FUNC3(bi, curve, privkey, privkey_len);
	if (!pk)
		goto fail;

	len = 4; /* "DPP:" */
	if (chan) {
		if (FUNC5(bi, chan) < 0)
			goto fail;
		len += 3 + FUNC13(chan); /* C:...; */
	}
	if (mac) {
		if (FUNC7(bi, mac) < 0)
			goto fail;
		len += 3 + FUNC13(mac); /* M:...; */
	}
	if (info) {
		if (FUNC6(bi, info) < 0)
			goto fail;
		len += 3 + FUNC13(info); /* I:...; */
	}
	len += 4 + FUNC13(pk);
	bi->uri = FUNC11(len + 1);
	if (!bi->uri)
		goto fail;
	FUNC12(bi->uri, len + 1, "DPP:%s%s%s%s%s%s%s%s%sK:%s;;",
		    chan ? "C:" : "", chan ? chan : "", chan ? ";" : "",
		    mac ? "M:" : "", mac ? mac : "", mac ? ";" : "",
		    info ? "I:" : "", info ? info : "", info ? ";" : "",
		    pk);
	bi->id = FUNC4(dpp);
	FUNC1(&dpp->bootstrap, &bi->list);
	ret = bi->id;
	bi = NULL;
fail:
	FUNC10(curve);
	FUNC10(pk);
	FUNC10(chan);
	FUNC10(mac);
	FUNC10(info);
	FUNC16(key);
	FUNC0(privkey, privkey_len);
	FUNC2(bi);
	return ret;
}