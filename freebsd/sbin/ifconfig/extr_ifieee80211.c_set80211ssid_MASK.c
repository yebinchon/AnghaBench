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
typedef  int /*<<< orphan*/  u_int8_t ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_SSID ; 
 int IEEE80211_NWID_LEN ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(const char *val, int d, int s, const struct afswtch *rafp)
{
	int		ssid;
	int		len;
	u_int8_t	data[IEEE80211_NWID_LEN];

	ssid = 0;
	len = FUNC6(val);
	if (len > 2 && FUNC4((int)val[0]) && val[1] == ':') {
		ssid = FUNC0(val)-1;
		val += 2;
	}

	FUNC1(data, sizeof(data));
	len = sizeof(data);
	if (FUNC3(val, NULL, data, &len) == NULL)
		FUNC2(1);

	FUNC5(s, IEEE80211_IOC_SSID, ssid, len, data);
}