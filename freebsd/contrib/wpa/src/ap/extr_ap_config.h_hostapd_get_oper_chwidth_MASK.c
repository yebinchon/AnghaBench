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
typedef  int /*<<< orphan*/  u8 ;
struct hostapd_config {int /*<<< orphan*/  vht_oper_chwidth; int /*<<< orphan*/  he_oper_chwidth; scalar_t__ ieee80211ax; } ;

/* Variables and functions */

__attribute__((used)) static inline u8 FUNC0(struct hostapd_config *conf)
{
#ifdef CONFIG_IEEE80211AX
	if (conf->ieee80211ax)
		return conf->he_oper_chwidth;
#endif /* CONFIG_IEEE80211AX */
	return conf->vht_oper_chwidth;
}