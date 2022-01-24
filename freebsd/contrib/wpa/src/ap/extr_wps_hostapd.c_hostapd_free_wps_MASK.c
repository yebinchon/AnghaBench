#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * vendor_ext; } ;
struct wps_context {int /*<<< orphan*/  dh_privkey; int /*<<< orphan*/  dh_pubkey; struct wps_context* network_key; TYPE_1__ dev; } ;

/* Variables and functions */
 int MAX_WPS_VENDOR_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (struct wps_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct wps_context *wps)
{
	int i;

	for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++)
		FUNC2(wps->dev.vendor_ext[i]);
	FUNC3(&wps->dev);
	FUNC1(wps->network_key);
	FUNC0(wps);
	FUNC2(wps->dh_pubkey);
	FUNC2(wps->dh_privkey);
	FUNC1(wps);
}