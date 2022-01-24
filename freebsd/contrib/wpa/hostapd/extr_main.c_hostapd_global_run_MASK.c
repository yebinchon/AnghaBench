#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hapd_interfaces {size_t count; TYPE_3__** iface; } ;
struct TYPE_6__ {size_t num_bss; TYPE_2__** bss; } ;
struct TYPE_5__ {TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ tnc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct hapd_interfaces *ifaces, int daemonize,
			      const char *pid_file)
{
#ifdef EAP_SERVER_TNC
	int tnc = 0;
	size_t i, k;

	for (i = 0; !tnc && i < ifaces->count; i++) {
		for (k = 0; k < ifaces->iface[i]->num_bss; k++) {
			if (ifaces->iface[i]->bss[0]->conf->tnc) {
				tnc++;
				break;
			}
		}
	}

	if (tnc && tncs_global_init() < 0) {
		wpa_printf(MSG_ERROR, "Failed to initialize TNCS");
		return -1;
	}
#endif /* EAP_SERVER_TNC */

	if (daemonize) {
		if (FUNC2(pid_file)) {
			FUNC5(MSG_ERROR, "daemon: %s", FUNC3(errno));
			return -1;
		}
		if (FUNC1()) {
			FUNC5(MSG_ERROR, "eloop_sock_requeue: %s",
				   FUNC3(errno));
			return -1;
		}
	}

	FUNC0();

	return 0;
}