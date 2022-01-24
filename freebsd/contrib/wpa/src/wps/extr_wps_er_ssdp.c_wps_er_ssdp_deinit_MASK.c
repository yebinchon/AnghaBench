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
struct wps_er {scalar_t__ multicast_sd; scalar_t__ ssdp_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct wps_er *er)
{
	if (er->multicast_sd >= 0) {
		FUNC1(er->multicast_sd, EVENT_TYPE_READ);
		FUNC0(er->multicast_sd);
	}
	if (er->ssdp_sd >= 0) {
		FUNC1(er->ssdp_sd, EVENT_TYPE_READ);
		FUNC0(er->ssdp_sd);
	}
}