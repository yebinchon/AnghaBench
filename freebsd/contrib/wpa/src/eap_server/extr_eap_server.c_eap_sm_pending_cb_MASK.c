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
struct eap_sm {scalar_t__ method_pending; } ;

/* Variables and functions */
 scalar_t__ METHOD_PENDING_CONT ; 
 scalar_t__ METHOD_PENDING_WAIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

void FUNC1(struct eap_sm *sm)
{
	if (sm == NULL)
		return;
	FUNC0(MSG_DEBUG, "EAP: Callback for pending request received");
	if (sm->method_pending == METHOD_PENDING_WAIT)
		sm->method_pending = METHOD_PENDING_CONT;
}