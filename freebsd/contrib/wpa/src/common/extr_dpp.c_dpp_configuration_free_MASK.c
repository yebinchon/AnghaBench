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
struct dpp_configuration {int /*<<< orphan*/  group_id; int /*<<< orphan*/  passphrase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpp_configuration*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dpp_configuration *conf)
{
	if (!conf)
		return;
	FUNC2(conf->passphrase);
	FUNC1(conf->group_id);
	FUNC0(conf, sizeof(*conf));
}