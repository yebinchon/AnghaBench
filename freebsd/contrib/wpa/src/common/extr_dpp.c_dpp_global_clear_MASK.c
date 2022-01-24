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
struct dpp_global {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpp_global*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_global*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_global*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp_global*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpp_global*) ; 

void FUNC5(struct dpp_global *dpp)
{
	if (!dpp)
		return;

	FUNC0(dpp, 0);
	FUNC1(dpp, 0);
#ifdef CONFIG_DPP2
	dpp_tcp_init_flush(dpp);
	dpp_relay_flush_controllers(dpp);
	dpp_controller_stop(dpp);
#endif /* CONFIG_DPP2 */
}