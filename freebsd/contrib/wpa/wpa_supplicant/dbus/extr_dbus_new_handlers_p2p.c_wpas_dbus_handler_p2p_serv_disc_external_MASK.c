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
struct wpa_supplicant {int p2p_sd_over_ctrl_iface; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DBusMessage * FUNC2(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter;
	int ext = 0;

	FUNC1(message, &iter);
	FUNC0(&iter, &ext);

	wpa_s->p2p_sd_over_ctrl_iface = ext;

	return NULL;

}