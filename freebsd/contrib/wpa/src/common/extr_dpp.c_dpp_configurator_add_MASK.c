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
struct dpp_global {int /*<<< orphan*/  configurator; } ;
struct dpp_configurator {int id; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_configurator*) ; 
 struct dpp_configurator* FUNC3 (char*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (struct dpp_global*) ; 
 char* FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (size_t) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(struct dpp_global *dpp, const char *cmd)
{
	char *curve = NULL;
	char *key = NULL;
	u8 *privkey = NULL;
	size_t privkey_len = 0;
	int ret = -1;
	struct dpp_configurator *conf = NULL;

	curve = FUNC5(cmd, " curve=");
	key = FUNC5(cmd, " key=");

	if (key) {
		privkey_len = FUNC9(key) / 2;
		privkey = FUNC8(privkey_len);
		if (!privkey ||
		    FUNC6(key, privkey, privkey_len) < 0)
			goto fail;
	}

	conf = FUNC3(curve, privkey, privkey_len);
	if (!conf)
		goto fail;

	conf->id = FUNC4(dpp);
	FUNC1(&dpp->configurator, &conf->list);
	ret = conf->id;
	conf = NULL;
fail:
	FUNC7(curve);
	FUNC10(key);
	FUNC0(privkey, privkey_len);
	FUNC2(conf);
	return ret;
}