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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_cred {struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_cred* cred; } ;

/* Variables and functions */
 int FUNC0 (struct wpa_supplicant*,struct wpa_cred*,struct wpabuf*) ; 

__attribute__((used)) static int FUNC1(struct wpa_supplicant *wpa_s,
				struct wpabuf *domain_names)
{
	struct wpa_cred *cred;

	if (domain_names == NULL || wpa_s->conf->cred == NULL)
		return -1;

	for (cred = wpa_s->conf->cred; cred; cred = cred->next) {
		int res = FUNC0(wpa_s, cred, domain_names);
		if (res)
			return res;
	}

	return 0;
}