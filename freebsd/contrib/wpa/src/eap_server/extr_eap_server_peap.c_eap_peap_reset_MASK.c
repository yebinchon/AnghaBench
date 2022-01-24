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
struct eap_peap_data {int /*<<< orphan*/  soh_response; int /*<<< orphan*/  phase2_key; int /*<<< orphan*/  pending_phase2_resp; int /*<<< orphan*/  ssl; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_peap_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct eap_sm *sm, void *priv)
{
	struct eap_peap_data *data = priv;
	if (data == NULL)
		return;
	if (data->phase2_priv && data->phase2_method)
		data->phase2_method->reset(sm, data->phase2_priv);
	FUNC1(sm, &data->ssl);
	FUNC4(data->pending_phase2_resp);
	FUNC2(data->phase2_key);
	FUNC4(data->soh_response);
	FUNC0(data, sizeof(*data));
}