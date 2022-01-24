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
struct wps_er_ap {int /*<<< orphan*/  list; int /*<<< orphan*/  location; int /*<<< orphan*/  addr; } ;
struct wps_er {int /*<<< orphan*/  ap_unsubscribing; scalar_t__ deinitializing; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_er*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct wps_er *er, struct wps_er_ap *ap)
{
	FUNC3(MSG_DEBUG, "WPS ER: Unsubscribed from AP %s (%s)",
		   FUNC2(ap->addr), ap->location);
	FUNC0(&ap->list);
	FUNC4(ap);

	if (er->deinitializing && FUNC1(&er->ap_unsubscribing))
		FUNC5(er, NULL);
}