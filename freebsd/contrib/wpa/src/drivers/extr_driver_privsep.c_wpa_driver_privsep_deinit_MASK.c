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
struct wpa_driver_privsep_data {scalar_t__ priv_socket; scalar_t__ cmd_socket; struct wpa_driver_privsep_data* own_cmd_path; struct wpa_driver_privsep_data* own_socket_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIVSEP_CMD_UNREGISTER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_driver_privsep_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_privsep_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_driver_privsep_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *priv)
{
	struct wpa_driver_privsep_data *drv = priv;

	if (drv->priv_socket >= 0) {
		FUNC4(drv, PRIVSEP_CMD_UNREGISTER);
		FUNC1(drv->priv_socket);
		FUNC0(drv->priv_socket);
	}

	if (drv->own_socket_path) {
		FUNC3(drv->own_socket_path);
		FUNC2(drv->own_socket_path);
	}

	if (drv->cmd_socket >= 0) {
		FUNC1(drv->cmd_socket);
		FUNC0(drv->cmd_socket);
	}

	if (drv->own_cmd_path) {
		FUNC3(drv->own_cmd_path);
		FUNC2(drv->own_cmd_path);
	}

	FUNC2(drv);
}