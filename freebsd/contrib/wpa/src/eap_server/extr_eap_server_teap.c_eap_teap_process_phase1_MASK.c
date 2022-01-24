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
struct TYPE_2__ {int /*<<< orphan*/  tls_out; int /*<<< orphan*/  conn; } ;
struct eap_teap_data {TYPE_1__ ssl; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct eap_sm*,TYPE_1__*) ; 
 int FUNC1 (struct eap_sm*,struct eap_teap_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm,
				   struct eap_teap_data *data)
{
	if (FUNC0(sm, &data->ssl) < 0) {
		FUNC4(MSG_INFO, "EAP-TEAP: TLS processing failed");
		FUNC2(data, FAILURE);
		return -1;
	}

	if (!FUNC3(sm->ssl_ctx, data->ssl.conn) ||
	    FUNC5(data->ssl.tls_out) > 0)
		return 1;

	/*
	 * Phase 1 was completed with the received message (e.g., when using
	 * abbreviated handshake), so Phase 2 can be started immediately
	 * without having to send through an empty message to the peer.
	 */

	return FUNC1(sm, data);
}