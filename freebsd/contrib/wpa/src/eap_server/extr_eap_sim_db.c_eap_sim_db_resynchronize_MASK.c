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
struct eap_sim_db_data {scalar_t__ sock; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_AUTS_LEN ; 
 char const EAP_AKA_PERMANENT_PREFIX ; 
 char const EAP_AKA_PRIME_PERMANENT_PREFIX ; 
 int /*<<< orphan*/  EAP_AKA_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sim_db_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC7(struct eap_sim_db_data *data,
			     const char *username,
			     const u8 *auts, const u8 *_rand)
{
	const char *imsi;
	size_t imsi_len;

	if (username == NULL ||
	    (username[0] != EAP_AKA_PERMANENT_PREFIX &&
	     username[0] != EAP_AKA_PRIME_PERMANENT_PREFIX) ||
	    username[1] == '\0' || FUNC4(username) > 20) {
		FUNC5(MSG_DEBUG, "EAP-SIM DB: unexpected username '%s'",
			   username);
		return -1;
	}
	imsi = username + 1;
	FUNC5(MSG_DEBUG, "EAP-SIM DB: Get AKA auth for IMSI '%s'",
		   imsi);

	if (data->sock >= 0) {
		char msg[100];
		int len, ret;

		imsi_len = FUNC4(imsi);
		len = FUNC2(msg, sizeof(msg), "AKA-AUTS ");
		if (FUNC3(sizeof(msg), len) ||
		    len + imsi_len >= sizeof(msg))
			return -1;
		FUNC1(msg + len, imsi, imsi_len);
		len += imsi_len;

		ret = FUNC2(msg + len, sizeof(msg) - len, " ");
		if (FUNC3(sizeof(msg) - len, ret))
			return -1;
		len += ret;
		len += FUNC6(msg + len, sizeof(msg) - len,
					auts, EAP_AKA_AUTS_LEN);
		ret = FUNC2(msg + len, sizeof(msg) - len, " ");
		if (FUNC3(sizeof(msg) - len, ret))
			return -1;
		len += ret;
		len += FUNC6(msg + len, sizeof(msg) - len,
					_rand, EAP_AKA_RAND_LEN);
		FUNC5(MSG_DEBUG, "EAP-SIM DB: reporting AKA AUTS for "
			   "IMSI '%s'", imsi);
		if (FUNC0(data, msg, len) < 0)
			return -1;
	}

	return 0;
}