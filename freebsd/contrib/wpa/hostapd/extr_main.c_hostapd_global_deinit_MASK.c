#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * drv_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* global_deinit ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ global ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__** wpa_drivers ; 

__attribute__((used)) static void FUNC8(const char *pid_file, int eloop_initialized)
{
	int i;

	for (i = 0; wpa_drivers[i] && global.drv_priv; i++) {
		if (!global.drv_priv[i])
			continue;
		wpa_drivers[i]->global_deinit(global.drv_priv[i]);
	}
	FUNC4(global.drv_priv);
	global.drv_priv = NULL;

#ifdef EAP_SERVER_TNC
	tncs_global_deinit();
#endif /* EAP_SERVER_TNC */

	FUNC5();

	if (eloop_initialized)
		FUNC2();

#ifndef CONFIG_NATIVE_WINDOWS
	FUNC0();
#endif /* CONFIG_NATIVE_WINDOWS */

	FUNC1();

	FUNC3(pid_file);
}