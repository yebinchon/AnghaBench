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
struct hostapd_data {int dummy; } ;
struct gas_query_ap {int /*<<< orphan*/  pending; void* msg_ctx; struct hostapd_data* hapd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gas_query_ap* FUNC1 (int) ; 

struct gas_query_ap * FUNC2(struct hostapd_data *hapd,
					void *msg_ctx)
{
	struct gas_query_ap *gas;

	gas = FUNC1(sizeof(*gas));
	if (!gas)
		return NULL;

	gas->hapd = hapd;
	gas->msg_ctx = msg_ctx;
	FUNC0(&gas->pending);

	return gas;
}