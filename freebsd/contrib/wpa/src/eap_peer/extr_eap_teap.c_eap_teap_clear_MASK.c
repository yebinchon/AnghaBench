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
struct eap_teap_data {int /*<<< orphan*/  simck_emsk; int /*<<< orphan*/  simck_msk; int /*<<< orphan*/ * peer_outer_tlvs; int /*<<< orphan*/ * server_outer_tlvs; int /*<<< orphan*/ * pending_resp; int /*<<< orphan*/ * pending_phase2_req; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  emsk; int /*<<< orphan*/  key_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EMSK_LEN ; 
 int /*<<< orphan*/  EAP_TEAP_KEY_LEN ; 
 int /*<<< orphan*/  EAP_TEAP_SIMCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct eap_teap_data *data)
{
	FUNC0(data->key_data, EAP_TEAP_KEY_LEN);
	FUNC0(data->emsk, EAP_EMSK_LEN);
	FUNC1(data->session_id);
	data->session_id = NULL;
	FUNC2(data->pending_phase2_req);
	data->pending_phase2_req = NULL;
	FUNC2(data->pending_resp);
	data->pending_resp = NULL;
	FUNC2(data->server_outer_tlvs);
	data->server_outer_tlvs = NULL;
	FUNC2(data->peer_outer_tlvs);
	data->peer_outer_tlvs = NULL;
	FUNC0(data->simck_msk, EAP_TEAP_SIMCK_LEN);
	FUNC0(data->simck_emsk, EAP_TEAP_SIMCK_LEN);
}