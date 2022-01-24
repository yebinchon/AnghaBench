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
struct dpp_authentication {int /*<<< orphan*/  groups_override; int /*<<< orphan*/  discovery_override; int /*<<< orphan*/  config_obj_override; int /*<<< orphan*/  tmp_own_bi; int /*<<< orphan*/  c_sign_key; int /*<<< orphan*/  net_access_key; int /*<<< orphan*/  connector; int /*<<< orphan*/  conf_req; int /*<<< orphan*/  resp_msg; int /*<<< orphan*/  req_msg; int /*<<< orphan*/  peer_protocol_key; int /*<<< orphan*/  own_protocol_key; int /*<<< orphan*/  conf_sta; int /*<<< orphan*/  conf_ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_authentication*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct dpp_authentication *auth)
{
	if (!auth)
		return;
	FUNC3(auth->conf_ap);
	FUNC3(auth->conf_sta);
	FUNC0(auth->own_protocol_key);
	FUNC0(auth->peer_protocol_key);
	FUNC5(auth->req_msg);
	FUNC5(auth->resp_msg);
	FUNC5(auth->conf_req);
	FUNC4(auth->connector);
	FUNC5(auth->net_access_key);
	FUNC5(auth->c_sign_key);
	FUNC2(auth->tmp_own_bi);
#ifdef CONFIG_TESTING_OPTIONS
	os_free(auth->config_obj_override);
	os_free(auth->discovery_override);
	os_free(auth->groups_override);
#endif /* CONFIG_TESTING_OPTIONS */
	FUNC1(auth, sizeof(*auth));
}