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
struct eap_sm {int /*<<< orphan*/  eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* notify_status ) (int /*<<< orphan*/ ,char const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC2(struct eap_sm *sm, const char *status,
				      const char *parameter)
{
	FUNC1(MSG_DEBUG, "EAP: Status notification: %s (param=%s)",
		   status, parameter);
	if (sm->eapol_cb->notify_status)
		sm->eapol_cb->notify_status(sm->eapol_ctx, status, parameter);
}