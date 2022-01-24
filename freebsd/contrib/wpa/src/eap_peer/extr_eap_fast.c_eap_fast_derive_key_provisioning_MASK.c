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
struct eap_fast_key_block_provisioning {int /*<<< orphan*/  client_challenge; int /*<<< orphan*/  server_challenge; int /*<<< orphan*/  session_key_seed; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_fast_data {struct eap_fast_key_block_provisioning* key_block_p; int /*<<< orphan*/  simck; scalar_t__ simck_idx; TYPE_1__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_FAST_SIMCK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_fast_key_block_provisioning*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct eap_sm *sm,
					    struct eap_fast_data *data)
{
	FUNC1(data->key_block_p);
	data->key_block_p = (struct eap_fast_key_block_provisioning *)
		FUNC0(sm->ssl_ctx, data->ssl.conn,
				    sizeof(*data->key_block_p));
	if (data->key_block_p == NULL) {
		FUNC4(MSG_DEBUG, "EAP-FAST: Failed to derive key block");
		return -1;
	}
	/*
	 * RFC 4851, Section 5.2:
	 * S-IMCK[0] = session_key_seed
	 */
	FUNC3(MSG_DEBUG,
			"EAP-FAST: session_key_seed (SKS = S-IMCK[0])",
			data->key_block_p->session_key_seed,
			sizeof(data->key_block_p->session_key_seed));
	data->simck_idx = 0;
	FUNC2(data->simck, data->key_block_p->session_key_seed,
		  EAP_FAST_SIMCK_LEN);
	FUNC3(MSG_DEBUG, "EAP-FAST: server_challenge",
			data->key_block_p->server_challenge,
			sizeof(data->key_block_p->server_challenge));
	FUNC3(MSG_DEBUG, "EAP-FAST: client_challenge",
			data->key_block_p->client_challenge,
			sizeof(data->key_block_p->client_challenge));
	return 0;
}