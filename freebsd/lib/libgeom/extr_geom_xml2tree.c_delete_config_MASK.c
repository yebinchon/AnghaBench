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
struct gconfig {struct gconfig* lg_val; struct gconfig* lg_name; } ;
struct gconf {int dummy; } ;

/* Variables and functions */
 struct gconfig* FUNC0 (struct gconf*) ; 
 int /*<<< orphan*/  FUNC1 (struct gconfig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gconfig*) ; 
 int /*<<< orphan*/  lg_config ; 

__attribute__((used)) static void 
FUNC3(struct gconf *gp)
{
	struct gconfig *cf;

	for (;;) {
		cf = FUNC0(gp);
		if (cf == NULL)
			return;
		FUNC1(cf, lg_config);
		FUNC2(cf->lg_name);
		FUNC2(cf->lg_val);
		FUNC2(cf);
	}
}