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
struct eap_teap_data {int /*<<< orphan*/  pac_opaque_encr; int /*<<< orphan*/  cmk_emsk; int /*<<< orphan*/  cmk_msk; int /*<<< orphan*/  simck_emsk; int /*<<< orphan*/  simck_msk; int /*<<< orphan*/  identity; int /*<<< orphan*/  peer_outer_tlvs; int /*<<< orphan*/  server_outer_tlvs; int /*<<< orphan*/  pending_phase2_resp; int /*<<< orphan*/  srv_id_info; int /*<<< orphan*/  srv_id; int /*<<< orphan*/  ssl; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int EAP_TEAP_CMK_LEN ; 
 int EAP_TEAP_SIMCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct eap_teap_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv)
{
	struct eap_teap_data *data = priv;

	if (!data)
		return;
	if (data->phase2_priv && data->phase2_method)
		data->phase2_method->reset(sm, data->phase2_priv);
	FUNC1(sm, &data->ssl);
	FUNC3(data->srv_id);
	FUNC3(data->srv_id_info);
	FUNC5(data->pending_phase2_resp);
	FUNC5(data->server_outer_tlvs);
	FUNC5(data->peer_outer_tlvs);
	FUNC3(data->identity);
	FUNC2(data->simck_msk, EAP_TEAP_SIMCK_LEN);
	FUNC2(data->simck_emsk, EAP_TEAP_SIMCK_LEN);
	FUNC2(data->cmk_msk, EAP_TEAP_CMK_LEN);
	FUNC2(data->cmk_emsk, EAP_TEAP_CMK_LEN);
	FUNC2(data->pac_opaque_encr, sizeof(data->pac_opaque_encr));
	FUNC0(data, sizeof(*data));
}