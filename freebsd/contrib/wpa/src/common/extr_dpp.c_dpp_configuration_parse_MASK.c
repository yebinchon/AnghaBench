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
typedef  char u8 ;
struct dpp_configuration {size_t ssid_len; char* ssid; char* psk; int psk_set; char* group_id; long netaccesskey_expiry; scalar_t__ passphrase; } ;
struct dpp_authentication {struct dpp_configuration* conf_ap; struct dpp_configuration* conf_sta; } ;

/* Variables and functions */
 size_t PMK_LEN ; 
 struct dpp_configuration* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_configuration*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_configuration*) ; 
 scalar_t__ FUNC3 (char const*,char*,size_t) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 char* FUNC6 (char const*,char) ; 
 size_t FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (size_t) ; 
 long FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dpp_authentication *auth,
				   const char *cmd)
{
	const char *pos, *end;
	struct dpp_configuration *conf_sta = NULL, *conf_ap = NULL;
	struct dpp_configuration *conf = NULL;

	pos = FUNC8(cmd, " conf=sta-");
	if (pos) {
		conf_sta = FUNC0(pos + 10);
		if (!conf_sta)
			goto fail;
		conf = conf_sta;
	}

	pos = FUNC8(cmd, " conf=ap-");
	if (pos) {
		conf_ap = FUNC0(pos + 9);
		if (!conf_ap)
			goto fail;
		conf = conf_ap;
	}

	if (!conf)
		return 0;

	pos = FUNC8(cmd, " ssid=");
	if (pos) {
		pos += 6;
		end = FUNC6(pos, ' ');
		conf->ssid_len = end ? (size_t) (end - pos) : FUNC7(pos);
		conf->ssid_len /= 2;
		if (conf->ssid_len > sizeof(conf->ssid) ||
		    FUNC3(pos, conf->ssid, conf->ssid_len) < 0)
			goto fail;
	} else {
#ifdef CONFIG_TESTING_OPTIONS
		/* use a default SSID for legacy testing reasons */
		os_memcpy(conf->ssid, "test", 4);
		conf->ssid_len = 4;
#else /* CONFIG_TESTING_OPTIONS */
		goto fail;
#endif /* CONFIG_TESTING_OPTIONS */
	}

	pos = FUNC8(cmd, " pass=");
	if (pos) {
		size_t pass_len;

		pos += 6;
		end = FUNC6(pos, ' ');
		pass_len = end ? (size_t) (end - pos) : FUNC7(pos);
		pass_len /= 2;
		if (pass_len > 63 || pass_len < 8)
			goto fail;
		conf->passphrase = FUNC9(pass_len + 1);
		if (!conf->passphrase ||
		    FUNC3(pos, (u8 *) conf->passphrase, pass_len) < 0)
			goto fail;
	}

	pos = FUNC8(cmd, " psk=");
	if (pos) {
		pos += 5;
		if (FUNC3(pos, conf->psk, PMK_LEN) < 0)
			goto fail;
		conf->psk_set = 1;
	}

	pos = FUNC8(cmd, " group_id=");
	if (pos) {
		size_t group_id_len;

		pos += 10;
		end = FUNC6(pos, ' ');
		group_id_len = end ? (size_t) (end - pos) : FUNC7(pos);
		conf->group_id = FUNC4(group_id_len + 1);
		if (!conf->group_id)
			goto fail;
		FUNC5(conf->group_id, pos, group_id_len);
		conf->group_id[group_id_len] = '\0';
	}

	pos = FUNC8(cmd, " expiry=");
	if (pos) {
		long int val;

		pos += 8;
		val = FUNC10(pos, NULL, 0);
		if (val <= 0)
			goto fail;
		conf->netaccesskey_expiry = val;
	}

	if (!FUNC2(conf))
		goto fail;

	auth->conf_sta = conf_sta;
	auth->conf_ap = conf_ap;
	return 0;

fail:
	FUNC1(conf_sta);
	FUNC1(conf_ap);
	return -1;
}