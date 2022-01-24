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
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_passphrase; scalar_t__ pending_req_pin; scalar_t__ pending_req_otp; scalar_t__ pending_req_new_password; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;

/* Variables and functions */
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*) ; 

void FUNC7(struct eap_sm *sm)
{
	struct eap_peer_config *config = FUNC0(sm);

	if (config == NULL)
		return;

	/* Re-send any pending requests for user data since a new control
	 * interface was added. This handles cases where the EAP authentication
	 * starts immediately after system startup when the user interface is
	 * not yet running. */
	if (config->pending_req_identity)
		FUNC1(sm);
	if (config->pending_req_password)
		FUNC5(sm);
	if (config->pending_req_new_password)
		FUNC2(sm);
	if (config->pending_req_otp)
		FUNC3(sm, NULL, 0);
	if (config->pending_req_pin)
		FUNC6(sm);
	if (config->pending_req_passphrase)
		FUNC4(sm);
}