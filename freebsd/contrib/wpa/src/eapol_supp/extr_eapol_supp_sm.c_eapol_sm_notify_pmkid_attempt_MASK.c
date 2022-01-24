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
struct eapol_sm {int /*<<< orphan*/  cached_pmk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

void FUNC1(struct eapol_sm *sm)
{
	if (sm == NULL)
		return;
	FUNC0(MSG_DEBUG, "RSN: Trying to use cached PMKSA");
	sm->cached_pmk = TRUE;
}