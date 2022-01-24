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
struct eap_teap_data {scalar_t__ simck_idx; int /*<<< orphan*/  simck_msk; int /*<<< orphan*/  simck_emsk; TYPE_1__ ssl; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_SIMCK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TEAP_TLS_EXPORTER_LABEL_SKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct eap_sm *sm,
				    struct eap_teap_data *data)
{
	int res;

	/* RFC 7170, Section 5.1 */
	res = FUNC1(sm->ssl_ctx, data->ssl.conn,
					TEAP_TLS_EXPORTER_LABEL_SKS, NULL, 0,
					data->simck_msk, EAP_TEAP_SIMCK_LEN);
	if (res)
		return res;
	FUNC2(MSG_DEBUG,
			"EAP-TEAP: session_key_seed (S-IMCK[0])",
			data->simck_msk, EAP_TEAP_SIMCK_LEN);
	FUNC0(data->simck_emsk, data->simck_msk, EAP_TEAP_SIMCK_LEN);
	data->simck_idx = 0;
	return 0;
}