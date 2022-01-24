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
struct eap_ttls_data {int /*<<< orphan*/  pending_resp; int /*<<< orphan*/  pending_phase2_req; struct eap_ttls_data* session_id; int /*<<< orphan*/  ssl; struct eap_ttls_data* phase2_eap_types; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ttls_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_ttls_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_ttls_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct eap_sm *sm, void *priv)
{
	struct eap_ttls_data *data = priv;
	if (data == NULL)
		return;
	FUNC2(sm, data);
	FUNC3(data->phase2_eap_types);
	FUNC0(sm, &data->ssl);
	FUNC1(data);
	FUNC3(data->session_id);
	FUNC4(data->pending_phase2_req);
	FUNC4(data->pending_resp);
	FUNC3(data);
}