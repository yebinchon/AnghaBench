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

/* Variables and functions */
 int WME_AC_BE ; 
 int WME_AC_BK ; 
 int WME_AC_VI ; 
 int WME_AC_VO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *ac)
{
	if (FUNC1(ac, "ac_be") == 0 || FUNC1(ac, "be") == 0)
		return WME_AC_BE;
	if (FUNC1(ac, "ac_bk") == 0 || FUNC1(ac, "bk") == 0)
		return WME_AC_BK;
	if (FUNC1(ac, "ac_vi") == 0 || FUNC1(ac, "vi") == 0)
		return WME_AC_VI;
	if (FUNC1(ac, "ac_vo") == 0 || FUNC1(ac, "vo") == 0)
		return WME_AC_VO;
	FUNC0(1, "unknown wme access class %s", ac);
}