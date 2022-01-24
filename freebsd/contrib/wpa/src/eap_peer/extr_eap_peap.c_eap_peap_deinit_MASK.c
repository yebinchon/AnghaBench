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
struct eap_peap_data {int /*<<< orphan*/  pending_resp; int /*<<< orphan*/  pending_phase2_req; int /*<<< orphan*/  session_id; int /*<<< orphan*/  ssl; int /*<<< orphan*/  phase2_types; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_peap_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_peap_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv)
{
	struct eap_peap_data *data = priv;
	if (data == NULL)
		return;
	if (data->phase2_priv && data->phase2_method)
		data->phase2_method->deinit(sm, data->phase2_priv);
	FUNC3(data->phase2_types);
	FUNC2(sm, &data->ssl);
	FUNC1(data);
	FUNC3(data->session_id);
	FUNC5(data->pending_phase2_req);
	FUNC5(data->pending_resp);
	FUNC0(data, sizeof(*data));
}