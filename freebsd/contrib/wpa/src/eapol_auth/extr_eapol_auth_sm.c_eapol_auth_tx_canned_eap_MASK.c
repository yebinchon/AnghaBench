#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct eapol_state_machine {int /*<<< orphan*/  dot1xAuthEapolFramesTx; int /*<<< orphan*/  sta; TYPE_3__* eapol; int /*<<< orphan*/  addr; scalar_t__ last_eap_id; } ;
struct eap_hdr {scalar_t__ identifier; int /*<<< orphan*/  length; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  eap ;
struct TYPE_5__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* eapol_send ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_6__ {TYPE_2__ conf; TYPE_1__ cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_LOGGER_DEBUG ; 
 int /*<<< orphan*/  EAP_CODE_FAILURE ; 
 int /*<<< orphan*/  EAP_CODE_SUCCESS ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct eapol_state_machine *sm,
				     int success)
{
	struct eap_hdr eap;

	FUNC2(&eap, 0, sizeof(eap));

	eap.code = success ? EAP_CODE_SUCCESS : EAP_CODE_FAILURE;
	eap.identifier = ++sm->last_eap_id;
	eap.length = FUNC1(sizeof(eap));

	FUNC0(sm->eapol, sm->addr, EAPOL_LOGGER_DEBUG,
			   "Sending canned EAP packet %s (identifier %d)",
			   success ? "SUCCESS" : "FAILURE", eap.identifier);
	sm->eapol->cb.eapol_send(sm->eapol->conf.ctx, sm->sta,
				 IEEE802_1X_TYPE_EAP_PACKET,
				 (u8 *) &eap, sizeof(eap));
	sm->dot1xAuthEapolFramesTx++;
}