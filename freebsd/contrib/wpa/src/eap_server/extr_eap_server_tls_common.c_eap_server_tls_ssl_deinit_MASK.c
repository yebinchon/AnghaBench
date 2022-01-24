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
struct eap_ssl_data {int /*<<< orphan*/ * tls_out; int /*<<< orphan*/  conn; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_ssl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct eap_sm *sm, struct eap_ssl_data *data)
{
	FUNC1(sm->ssl_ctx, data->conn);
	FUNC0(data);
	FUNC2(data->tls_out);
	data->tls_out = NULL;
}