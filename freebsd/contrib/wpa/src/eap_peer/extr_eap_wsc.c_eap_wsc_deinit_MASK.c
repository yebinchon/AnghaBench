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
struct eap_wsc_data {TYPE_1__* wps_ctx; int /*<<< orphan*/  wps; int /*<<< orphan*/  out_buf; int /*<<< orphan*/  in_buf; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {struct eap_wsc_data* network_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_wsc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_wsc_data *data = priv;
	FUNC1(data->in_buf);
	FUNC1(data->out_buf);
	FUNC2(data->wps);
	FUNC0(data->wps_ctx->network_key);
	data->wps_ctx->network_key = NULL;
	FUNC0(data);
}