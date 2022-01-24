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
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_fast_data {int anon_provisioning; TYPE_1__ ssl; } ;
typedef  int /*<<< orphan*/  cipher ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PHASE2_START ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_fast_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_fast_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_fast_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm, struct eap_fast_data *data)
{
	char cipher[64];

	FUNC5(MSG_DEBUG, "EAP-FAST: Phase1 done, starting Phase2");

	if (FUNC4(sm->ssl_ctx, data->ssl.conn, cipher, sizeof(cipher))
	    < 0) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Failed to get cipher "
			   "information");
		FUNC2(data, FAILURE);
		return -1;
	}
	data->anon_provisioning = FUNC3(cipher, "ADH") != NULL;

	if (data->anon_provisioning) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Anonymous provisioning");
		FUNC1(sm, data);
	} else
		FUNC0(sm, data);

	FUNC2(data, PHASE2_START);

	return 0;
}