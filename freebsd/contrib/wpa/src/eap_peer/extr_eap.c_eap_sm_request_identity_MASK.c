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

/* Variables and functions */
 int /*<<< orphan*/  WPA_CTRL_REQ_EAP_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct eap_sm *sm)
{
	FUNC0(sm, WPA_CTRL_REQ_EAP_IDENTITY, NULL, 0);
}