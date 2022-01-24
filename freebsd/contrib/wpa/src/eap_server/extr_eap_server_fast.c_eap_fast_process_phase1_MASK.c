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
struct TYPE_2__ {int /*<<< orphan*/  tls_out; int /*<<< orphan*/  conn; } ;
struct eap_fast_data {TYPE_1__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (struct eap_sm*,struct eap_fast_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_fast_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sm*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm,
				   struct eap_fast_data *data)
{
	if (FUNC2(sm, &data->ssl) < 0) {
		FUNC4(MSG_INFO, "EAP-FAST: TLS processing failed");
		FUNC1(data, FAILURE);
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

	return FUNC0(sm, data);
}