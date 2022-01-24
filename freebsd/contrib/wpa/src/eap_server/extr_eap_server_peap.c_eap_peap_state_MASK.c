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
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_peap_data {int state; TYPE_1__ ssl; } ;

/* Variables and functions */
 int FAILURE ; 
 int FAILURE_REQ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_peap_data *data, int state)
{
	FUNC2(MSG_DEBUG, "EAP-PEAP: %s -> %s",
		   FUNC0(data->state),
		   FUNC0(state));
	data->state = state;
	if (state == FAILURE || state == FAILURE_REQ)
		FUNC1(data->ssl.conn);
}