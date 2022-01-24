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
struct wpa_supplicant {int /*<<< orphan*/  wpa; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(struct wpa_supplicant *wpa_s,
				 char *buf, size_t buflen)
{
	size_t reply_len;

	reply_len = FUNC0(wpa_s->wpa, buf, buflen);
#ifdef CONFIG_AP
	reply_len += wpas_ap_pmksa_cache_list(wpa_s, &buf[reply_len],
					      buflen - reply_len);
#endif /* CONFIG_AP */
	return reply_len;
}