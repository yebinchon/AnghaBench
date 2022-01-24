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
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_peap_data {scalar_t__ phase2_success; TYPE_1__ ssl; } ;
typedef  int Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Boolean FUNC1(struct eap_sm *sm, void *priv)
{
	struct eap_peap_data *data = priv;
	return FUNC0(sm->ssl_ctx, data->ssl.conn) &&
		data->phase2_success;
}