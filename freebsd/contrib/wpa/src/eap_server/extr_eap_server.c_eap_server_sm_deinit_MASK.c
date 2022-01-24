#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  aaaEapKeyDataLen; int /*<<< orphan*/  aaaEapKeyData; int /*<<< orphan*/  aaaEapRespData; int /*<<< orphan*/  aaaEapReqData; int /*<<< orphan*/  eapRespData; struct eap_sm* eapSessionId; int /*<<< orphan*/  eapKeyDataLen; int /*<<< orphan*/  eapKeyData; int /*<<< orphan*/  eapReqData; } ;
struct eap_sm {int /*<<< orphan*/  assoc_p2p_ie; int /*<<< orphan*/  assoc_wps_ie; int /*<<< orphan*/  user; TYPE_2__ eap_if; struct eap_sm* eap_fast_a_id_info; struct eap_sm* eap_fast_a_id; struct eap_sm* pac_opaque_encr_key; struct eap_sm* serial_num; struct eap_sm* identity; int /*<<< orphan*/  lastReqData; scalar_t__ eap_method_priv; TYPE_1__* m; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct eap_sm *sm)
{
	if (sm == NULL)
		return;
	FUNC4(MSG_DEBUG, "EAP: Server state machine removed");
	if (sm->m && sm->eap_method_priv)
		sm->m->reset(sm, sm->eap_method_priv);
	FUNC5(sm->eap_if.eapReqData);
	FUNC0(sm->eap_if.eapKeyData, sm->eap_if.eapKeyDataLen);
	FUNC2(sm->eap_if.eapSessionId);
	FUNC5(sm->lastReqData);
	FUNC5(sm->eap_if.eapRespData);
	FUNC2(sm->identity);
	FUNC2(sm->serial_num);
	FUNC2(sm->pac_opaque_encr_key);
	FUNC2(sm->eap_fast_a_id);
	FUNC2(sm->eap_fast_a_id_info);
	FUNC5(sm->eap_if.aaaEapReqData);
	FUNC5(sm->eap_if.aaaEapRespData);
	FUNC0(sm->eap_if.aaaEapKeyData, sm->eap_if.aaaEapKeyDataLen);
	FUNC1(sm->user);
	FUNC5(sm->assoc_wps_ie);
	FUNC5(sm->assoc_p2p_ie);
	FUNC2(sm);
}