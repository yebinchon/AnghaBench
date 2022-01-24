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
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int RRM_RANGE_REQ_MAX_RESPONDERS ; 
 int WLAN_RRM_RANGE_REQ_MAX_MIN_AP ; 
 int FUNC0 (char*) ; 
 int FUNC1 (struct hostapd_data*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct hostapd_data *hapd, char *cmd)
{
	u8 addr[ETH_ALEN];
	char *token, *context = NULL;
	int random_interval, min_ap;
	u8 responders[ETH_ALEN * RRM_RANGE_REQ_MAX_RESPONDERS];
	unsigned int n_responders;

	token = FUNC3(cmd, " ", &context);
	if (!token || FUNC2(token, addr)) {
		FUNC4(MSG_INFO,
			   "CTRL: REQ_RANGE - Bad destination address");
		return -1;
	}

	token = FUNC3(cmd, " ", &context);
	if (!token)
		return -1;

	random_interval = FUNC0(token);
	if (random_interval < 0 || random_interval > 0xffff)
		return -1;

	token = FUNC3(cmd, " ", &context);
	if (!token)
		return -1;

	min_ap = FUNC0(token);
	if (min_ap <= 0 || min_ap > WLAN_RRM_RANGE_REQ_MAX_MIN_AP)
		return -1;

	n_responders = 0;
	while ((token = FUNC3(cmd, " ", &context))) {
		if (n_responders == RRM_RANGE_REQ_MAX_RESPONDERS) {
			FUNC4(MSG_INFO,
				   "CTRL: REQ_RANGE: Too many responders");
			return -1;
		}

		if (FUNC2(token, responders + n_responders * ETH_ALEN)) {
			FUNC4(MSG_INFO,
				   "CTRL: REQ_RANGE: Bad responder address");
			return -1;
		}

		n_responders++;
	}

	if (!n_responders) {
		FUNC4(MSG_INFO,
			   "CTRL: REQ_RANGE - No FTM responder address");
		return -1;
	}

	return FUNC1(hapd, addr, random_interval, min_ap,
				      responders, n_responders);
}