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
struct hostapd_sta_info {int /*<<< orphan*/ * probe_ie_taxonomy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct hostapd_sta_info *info)
{
#ifdef CONFIG_TAXONOMY
	wpabuf_free(info->probe_ie_taxonomy);
	info->probe_ie_taxonomy = NULL;
#endif /* CONFIG_TAXONOMY */
	FUNC0(info);
}