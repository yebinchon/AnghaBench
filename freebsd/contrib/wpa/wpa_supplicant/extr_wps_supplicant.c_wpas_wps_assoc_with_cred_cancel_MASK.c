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
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,void*) ; 
 int /*<<< orphan*/  wpas_wps_assoc_with_cred ; 

__attribute__((used)) static void FUNC1(struct wpa_supplicant *wpa_s)
{
	FUNC0(wpas_wps_assoc_with_cred, wpa_s, (void *) 0);
	FUNC0(wpas_wps_assoc_with_cred, wpa_s, (void *) 1);
}