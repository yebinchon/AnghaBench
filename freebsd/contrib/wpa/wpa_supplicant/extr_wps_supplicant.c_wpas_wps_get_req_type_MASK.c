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
struct wpa_ssid {int /*<<< orphan*/  eap; } ;
typedef  enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;

/* Variables and functions */
 int WPS_REQ_ENROLLEE ; 
 int WPS_REQ_REGISTRAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

enum wps_request_type FUNC2(struct wpa_ssid *ssid)
{
	if (FUNC0(&ssid->eap) ||
	    FUNC1(&ssid->eap))
		return WPS_REQ_ENROLLEE;
	else
		return WPS_REQ_REGISTRAR;
}