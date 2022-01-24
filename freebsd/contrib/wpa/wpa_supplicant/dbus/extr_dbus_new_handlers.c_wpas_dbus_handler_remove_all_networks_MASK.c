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
struct wpa_supplicant {int /*<<< orphan*/  conf; scalar_t__ sched_scanning; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  remove_network ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 

DBusMessage * FUNC2(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	if (wpa_s->sched_scanning)
		FUNC1(wpa_s);

	/* NB: could check for failure and return an error */
	FUNC0(wpa_s->conf, remove_network, wpa_s);
	return NULL;
}