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
struct p2p_srv_bonjour {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 struct p2p_srv_bonjour* FUNC1 (struct wpa_supplicant*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_srv_bonjour*) ; 

int FUNC3(struct wpa_supplicant *wpa_s,
				 const struct wpabuf *query)
{
	struct p2p_srv_bonjour *bsrv;

	bsrv = FUNC1(wpa_s, query);
	if (bsrv == NULL)
		return -1;
	FUNC2(bsrv);
	FUNC0(wpa_s);
	return 0;
}