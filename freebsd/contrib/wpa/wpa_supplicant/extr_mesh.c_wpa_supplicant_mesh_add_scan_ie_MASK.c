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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_MESH_ID ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wpabuf**,size_t) ; 

void FUNC2(struct wpa_supplicant *wpa_s,
				     struct wpabuf **extra_ie)
{
	/* EID + 0-length (wildcard) mesh-id */
	size_t ielen = 2;

	if (FUNC1(extra_ie, ielen) == 0) {
		FUNC0(*extra_ie, WLAN_EID_MESH_ID);
		FUNC0(*extra_ie, 0);
	}
}