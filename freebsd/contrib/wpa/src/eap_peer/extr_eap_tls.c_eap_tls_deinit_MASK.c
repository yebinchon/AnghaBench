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
struct eap_tls_data {int /*<<< orphan*/  pending_resp; struct eap_tls_data* session_id; int /*<<< orphan*/  ssl; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tls_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_tls_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm, void *priv)
{
	struct eap_tls_data *data = priv;
	if (data == NULL)
		return;
	FUNC0(sm, &data->ssl);
	FUNC1(data);
	FUNC2(data->session_id);
	FUNC3(data->pending_resp);
	FUNC2(data);
}