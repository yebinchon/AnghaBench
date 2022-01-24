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
struct gas_query_pending {int retry; int dialog_token; int /*<<< orphan*/ * adv_proto; scalar_t__ next_frag_id; scalar_t__ wait_comeback; int /*<<< orphan*/  req; int /*<<< orphan*/  addr; } ;
struct gas_query {struct gas_query_pending* current; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gas_query*,struct gas_query_pending*) ; 
 int FUNC1 (struct gas_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gas_query_timeout ; 
 int /*<<< orphan*/  gas_query_tx_comeback_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct gas_query*,struct gas_query_pending*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *eloop_data, void *user_ctx)
{
	struct gas_query *gas = eloop_data;
	struct gas_query_pending *query = user_ctx;
	int dialog_token;

	FUNC3(MSG_DEBUG,
		   "GAS: No response to comeback request received (retry=%u)",
		   query->retry);
	if (gas->current != query || query->retry)
		return;
	dialog_token = FUNC1(gas, query->addr);
	if (dialog_token < 0)
		return;
	FUNC3(MSG_DEBUG,
		   "GAS: Retry GAS query due to comeback response timeout");
	query->retry = 1;
	query->dialog_token = dialog_token;
	*(FUNC5(query->req) + 2) = dialog_token;
	query->wait_comeback = 0;
	query->next_frag_id = 0;
	FUNC4(query->adv_proto);
	query->adv_proto = NULL;
	FUNC0(gas_query_tx_comeback_timeout, gas, query);
	FUNC0(gas_query_timeout, gas, query);
	FUNC2(gas, query);
}