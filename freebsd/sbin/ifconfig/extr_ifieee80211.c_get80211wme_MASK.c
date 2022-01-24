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
struct ieee80211req {int i_type; int i_len; int i_val; int /*<<< orphan*/  i_name; } ;
typedef  int /*<<< orphan*/  ireq ;

/* Variables and functions */
 int IEEE80211_WMEPARAM_BSS ; 
 int IEEE80211_WMEPARAM_VAL ; 
 int /*<<< orphan*/  SIOCG80211 ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,char*) ; 

__attribute__((used)) static int
FUNC4(int s, int param, int ac, int *val)
{
	struct ieee80211req ireq;

	(void) FUNC1(&ireq, 0, sizeof(ireq));
	(void) FUNC2(ireq.i_name, name, sizeof(ireq.i_name));
	ireq.i_type = param;
	ireq.i_len = ac;
	if (FUNC0(s, SIOCG80211, &ireq) < 0) {
		FUNC3("cannot get WME parameter %d, ac %d%s",
		    param, ac & IEEE80211_WMEPARAM_VAL,
		    ac & IEEE80211_WMEPARAM_BSS ? " (BSS)" : "");
		return -1;
	}
	*val = ireq.i_val;
	return 0;
}