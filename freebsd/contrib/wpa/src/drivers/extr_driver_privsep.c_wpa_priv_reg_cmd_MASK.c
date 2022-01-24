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
struct wpa_driver_privsep_data {int /*<<< orphan*/  priv_addr; int /*<<< orphan*/  priv_socket; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wpa_driver_privsep_data *drv, int cmd)
{
	int res;

	res = FUNC0(drv->priv_socket, &cmd, sizeof(cmd), 0,
		     (struct sockaddr *) &drv->priv_addr,
		     sizeof(drv->priv_addr));
	if (res < 0)
		FUNC2(MSG_ERROR, "sendto: %s", FUNC1(errno));
	return res < 0 ? -1 : 0;
}