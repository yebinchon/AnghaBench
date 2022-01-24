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
struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; } ;
struct radius_client_data {int /*<<< orphan*/  acct_serv_sock6; int /*<<< orphan*/  acct_serv_sock; struct radius_msg_list* msgs; int /*<<< orphan*/  ctx; struct hostapd_radius_servers* conf; } ;
struct hostapd_radius_servers {int num_acct_servers; struct hostapd_radius_server* acct_server; struct hostapd_radius_server* acct_servers; } ;
struct hostapd_radius_server {int /*<<< orphan*/  timeouts; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  abuf ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_NOTICE ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 scalar_t__ RADIUS_ACCT ; 
 scalar_t__ RADIUS_ACCT_INTERIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_client_data*,struct hostapd_radius_server*,struct hostapd_radius_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct radius_client_data *radius)
{
	struct hostapd_radius_servers *conf = radius->conf;
	struct hostapd_radius_server *next, *old;
	struct radius_msg_list *entry;
	char abuf[50];

	old = conf->acct_server;
	FUNC1(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_NOTICE,
		       "No response from Accounting server %s:%d - failover",
		       FUNC0(&old->addr, abuf, sizeof(abuf)),
		       old->port);

	for (entry = radius->msgs; entry; entry = entry->next) {
		if (entry->msg_type == RADIUS_ACCT ||
		    entry->msg_type == RADIUS_ACCT_INTERIM)
			old->timeouts++;
	}

	next = old + 1;
	if (next > &conf->acct_servers[conf->num_acct_servers - 1])
		next = conf->acct_servers;
	conf->acct_server = next;
	FUNC2(radius, next, old,
			     radius->acct_serv_sock,
			     radius->acct_serv_sock6, 0);
}