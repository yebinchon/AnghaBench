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
struct eap_sm {int dummy; } ;
struct eap_fast_pac {struct eap_fast_pac* next; } ;
struct eap_fast_data {int /*<<< orphan*/  pending_resp; int /*<<< orphan*/  pending_phase2_req; struct eap_fast_data* session_id; int /*<<< orphan*/  emsk; int /*<<< orphan*/  key_data; struct eap_fast_pac* pac; int /*<<< orphan*/  ssl; struct eap_fast_data* key_block_p; struct eap_fast_data* phase2_types; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EMSK_LEN ; 
 int /*<<< orphan*/  EAP_FAST_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct eap_fast_pac*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_fast_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv)
{
	struct eap_fast_data *data = priv;
	struct eap_fast_pac *pac, *prev;

	if (data == NULL)
		return;
	if (data->phase2_priv && data->phase2_method)
		data->phase2_method->deinit(sm, data->phase2_priv);
	FUNC2(data->phase2_types);
	FUNC2(data->key_block_p);
	FUNC1(sm, &data->ssl);

	pac = data->pac;
	prev = NULL;
	while (pac) {
		prev = pac;
		pac = pac->next;
		FUNC0(prev);
	}
	FUNC3(data->key_data, 0, EAP_FAST_KEY_LEN);
	FUNC3(data->emsk, 0, EAP_EMSK_LEN);
	FUNC2(data->session_id);
	FUNC5(data->pending_phase2_req);
	FUNC5(data->pending_resp);
	FUNC2(data);
}