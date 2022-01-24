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
struct nlattr {int dummy; } ;
struct hostapd_hw_modes {int /*<<< orphan*/ * he_capab; } ;

/* Variables and functions */
 unsigned int IEEE80211_MODE_NUM ; 
 size_t NL80211_BAND_IFTYPE_ATTR_IFTYPES ; 
 int /*<<< orphan*/  NL80211_BAND_IFTYPE_ATTR_MAX ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MAX ; 
 int NL_OK ; 
 int NL_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,struct nlattr**,struct nlattr**) ; 

__attribute__((used)) static int FUNC5(struct hostapd_hw_modes *mode,
			   struct nlattr *nl_iftype)
{
	struct nlattr *tb[NL80211_BAND_IFTYPE_ATTR_MAX + 1];
	struct nlattr *tb_flags[NL80211_IFTYPE_MAX + 1];
	unsigned int i;

	FUNC2(tb, NL80211_BAND_IFTYPE_ATTR_MAX,
		  FUNC0(nl_iftype), FUNC1(nl_iftype), NULL);

	if (!tb[NL80211_BAND_IFTYPE_ATTR_IFTYPES])
		return NL_STOP;

	if (FUNC3(tb_flags, NL80211_IFTYPE_MAX,
			     tb[NL80211_BAND_IFTYPE_ATTR_IFTYPES], NULL))
		return NL_STOP;

	for (i = 0; i < IEEE80211_MODE_NUM; i++)
		FUNC4(&mode->he_capab[i], i, tb, tb_flags);

	return NL_OK;
}