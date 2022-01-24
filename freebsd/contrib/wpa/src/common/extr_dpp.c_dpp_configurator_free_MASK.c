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
struct dpp_configurator {struct dpp_configurator* kid; int /*<<< orphan*/  csign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_configurator*) ; 

void FUNC2(struct dpp_configurator *conf)
{
	if (!conf)
		return;
	FUNC0(conf->csign);
	FUNC1(conf->kid);
	FUNC1(conf);
}