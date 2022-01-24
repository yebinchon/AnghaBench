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
struct gas_server_response {scalar_t__ offset; int /*<<< orphan*/  list; int /*<<< orphan*/ * resp; TYPE_1__* handler; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* status_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gas_server_response*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gas_server_response *response,
					int ack)
{
	if (ack && response->offset < FUNC4(response->resp)) {
		FUNC3(MSG_DEBUG,
			   "GAS: More fragments remaining - keep pending entry");
		return;
	}

	if (!ack)
		FUNC3(MSG_DEBUG,
			   "GAS: No ACK received - drop pending entry");
	else
		FUNC3(MSG_DEBUG,
			   "GAS: Last fragment of the response sent out - drop pending entry");

	response->handler->status_cb(response->handler->ctx,
				     response->resp, ack);
	response->resp = NULL;
	FUNC0(&response->list);
	FUNC1(response);
}