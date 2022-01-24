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
struct bsd_driver_global {int /*<<< orphan*/  sock; int /*<<< orphan*/  route; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bsd_driver_global*) ; 

__attribute__((used)) static void
FUNC3(void *priv)
{
	struct bsd_driver_global *global = priv;

	FUNC1(global->route);
	(void) FUNC0(global->route);
	(void) FUNC0(global->sock);
	FUNC2(global);
}