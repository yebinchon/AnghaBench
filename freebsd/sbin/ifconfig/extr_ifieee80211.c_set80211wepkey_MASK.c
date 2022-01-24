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
 int /*<<< orphan*/  IEEE80211_IOC_WEPKEY ; 
 int IEEE80211_KEYBUF_SIZE ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(const char *val, int d, int s, const struct afswtch *rafp)
{
	int		key = 0;
	int		len;
	u_int8_t	data[IEEE80211_KEYBUF_SIZE];

	if (FUNC3((int)val[0]) && val[1] == ':') {
		key = FUNC0(val)-1;
		val += 2;
	}

	FUNC1(data, sizeof(data));
	len = sizeof(data);
	FUNC2(val, NULL, data, &len);

	FUNC4(s, IEEE80211_IOC_WEPKEY, key, len, data);
}