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
struct radius_client_data {int auth_serv_sock; int acct_serv_sock; int auth_serv_sock6; int acct_serv_sock6; int auth_sock; int acct_sock; struct hostapd_radius_servers* conf; void* ctx; } ;
struct hostapd_radius_servers {scalar_t__ retry_primary_interval; scalar_t__ acct_server; scalar_t__ auth_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct radius_client_data*,int /*<<< orphan*/ *) ; 
 struct radius_client_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_client_data*) ; 
 scalar_t__ FUNC3 (struct radius_client_data*) ; 
 scalar_t__ FUNC4 (struct radius_client_data*) ; 
 int /*<<< orphan*/  radius_retry_primary_timer ; 

struct radius_client_data *
FUNC5(void *ctx, struct hostapd_radius_servers *conf)
{
	struct radius_client_data *radius;

	radius = FUNC1(sizeof(struct radius_client_data));
	if (radius == NULL)
		return NULL;

	radius->ctx = ctx;
	radius->conf = conf;
	radius->auth_serv_sock = radius->acct_serv_sock =
		radius->auth_serv_sock6 = radius->acct_serv_sock6 =
		radius->auth_sock = radius->acct_sock = -1;

	if (conf->auth_server && FUNC4(radius)) {
		FUNC2(radius);
		return NULL;
	}

	if (conf->acct_server && FUNC3(radius)) {
		FUNC2(radius);
		return NULL;
	}

	if (conf->retry_primary_interval)
		FUNC0(conf->retry_primary_interval, 0,
				       radius_retry_primary_timer, radius,
				       NULL);

	return radius;
}