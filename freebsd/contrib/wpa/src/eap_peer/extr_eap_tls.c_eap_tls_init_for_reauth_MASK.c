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
struct eap_tls_data {int /*<<< orphan*/  ssl; struct eap_tls_data* session_id; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tls_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_tls_data*) ; 

__attribute__((used)) static void * FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_tls_data *data = priv;
	FUNC1(data);
	FUNC2(data->session_id);
	data->session_id = NULL;
	if (FUNC0(sm, &data->ssl)) {
		FUNC2(data);
		return NULL;
	}
	return priv;
}