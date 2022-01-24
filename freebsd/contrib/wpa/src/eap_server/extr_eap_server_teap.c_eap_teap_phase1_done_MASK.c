#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_teap_data {int anon_provisioning; TYPE_1__ ssl; int /*<<< orphan*/  tls_cs; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
typedef  int /*<<< orphan*/  cipher ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PHASE2_START ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_teap_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm, struct eap_teap_data *data)
{
	char cipher[64];

	FUNC5(MSG_DEBUG, "EAP-TEAP: Phase 1 done, starting Phase 2");

	data->tls_cs = FUNC3(data->ssl.conn);
	FUNC5(MSG_DEBUG, "EAP-TEAP: TLS cipher suite 0x%04x",
		   data->tls_cs);

	if (FUNC4(sm->ssl_ctx, data->ssl.conn, cipher, sizeof(cipher))
	    < 0) {
		FUNC5(MSG_DEBUG,
			   "EAP-TEAP: Failed to get cipher information");
		FUNC1(data, FAILURE);
		return -1;
	}
	data->anon_provisioning = FUNC2(cipher, "ADH") != NULL;

	if (data->anon_provisioning)
		FUNC5(MSG_DEBUG, "EAP-TEAP: Anonymous provisioning");

	if (FUNC0(sm, data) < 0) {
		FUNC1(data, FAILURE);
		return -1;
	}

	FUNC1(data, PHASE2_START);

	return 0;
}