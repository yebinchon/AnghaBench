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
struct wpas_p2p_listen_work {int /*<<< orphan*/  probe_resp_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpas_p2p_listen_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wpas_p2p_listen_work *lwork)
{
	if (lwork == NULL)
		return;
	FUNC1(lwork->probe_resp_ie);
	FUNC0(lwork);
}