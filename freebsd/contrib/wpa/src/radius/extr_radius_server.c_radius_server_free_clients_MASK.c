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
struct radius_server_data {int dummy; } ;
struct radius_client {int /*<<< orphan*/  pending_dac_disconnect_req; int /*<<< orphan*/  pending_dac_coa_req; struct radius_client* shared_secret; int /*<<< orphan*/  sessions; struct radius_client* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radius_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_server_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct radius_server_data *data,
				       struct radius_client *clients)
{
	struct radius_client *client, *prev;

	client = clients;
	while (client) {
		prev = client;
		client = client->next;

		FUNC2(data, prev->sessions);
		FUNC0(prev->shared_secret);
		FUNC1(prev->pending_dac_coa_req);
		FUNC1(prev->pending_dac_disconnect_req);
		FUNC0(prev);
	}
}