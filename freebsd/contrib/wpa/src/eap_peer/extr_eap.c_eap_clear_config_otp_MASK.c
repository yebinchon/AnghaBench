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
struct eap_peer_config {scalar_t__ otp_len; int /*<<< orphan*/ * otp; } ;

/* Variables and functions */
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct eap_sm *sm)
{
	struct eap_peer_config *config = FUNC0(sm);
	if (config == NULL)
		return;
	FUNC2(config->otp, 0, config->otp_len);
	FUNC1(config->otp);
	config->otp = NULL;
	config->otp_len = 0;
}