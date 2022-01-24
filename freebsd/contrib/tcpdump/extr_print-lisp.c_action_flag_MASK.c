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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lisp_eid_action ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(netdissect_options *ndo, uint8_t act_auth_inc_res)
{
	uint8_t action;
	uint8_t authoritative;

	authoritative  = ((act_auth_inc_res >> 4) & 1);

	if (authoritative)
		FUNC0((ndo, " Authoritative,"));
	else
		FUNC0((ndo, " Non-Authoritative,"));

	action = act_auth_inc_res >> 5;
	FUNC0((ndo, " %s,", FUNC1(lisp_eid_action, "unknown", action)));
}