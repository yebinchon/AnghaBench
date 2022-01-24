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
struct eap_sim_db_data {int /*<<< orphan*/ * get_complete_cb; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sim_db_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_db_data*,char*,char*) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(int sock, void *eloop_ctx, void *sock_ctx)
{
	struct eap_sim_db_data *data = eloop_ctx;
	char buf[1000], *pos, *cmd, *imsi;
	int res;

	res = FUNC4(sock, buf, sizeof(buf) - 1, 0);
	if (res < 0)
		return;
	buf[res] = '\0';
	FUNC5(MSG_MSGDUMP, "EAP-SIM DB: Received from an "
			      "external source", (u8 *) buf, res);
	if (res == 0)
		return;

	if (data->get_complete_cb == NULL) {
		FUNC6(MSG_DEBUG, "EAP-SIM DB: No get_complete_cb "
			   "registered");
		return;
	}

	/* <cmd> <IMSI> ... */

	cmd = buf;
	pos = FUNC2(cmd, ' ');
	if (pos == NULL)
		goto parse_fail;
	*pos = '\0';
	imsi = pos + 1;
	pos = FUNC2(imsi, ' ');
	if (pos == NULL)
		goto parse_fail;
	*pos = '\0';
	FUNC6(MSG_DEBUG, "EAP-SIM DB: External response=%s for IMSI %s",
		   cmd, imsi);

	if (FUNC3(cmd, "SIM-RESP-AUTH") == 0)
		FUNC1(data, imsi, pos + 1);
	else if (FUNC3(cmd, "AKA-RESP-AUTH") == 0)
		FUNC0(data, imsi, pos + 1);
	else
		FUNC6(MSG_INFO, "EAP-SIM DB: Unknown external response "
			   "'%s'", cmd);
	return;

parse_fail:
	FUNC6(MSG_DEBUG, "EAP-SIM DB: Failed to parse response string");
}