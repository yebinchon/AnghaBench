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
 int /*<<< orphan*/  IEEE80211_IOC_WEP ; 
 int /*<<< orphan*/  IEEE80211_IOC_WEPKEY ; 
 int /*<<< orphan*/  IEEE80211_IOC_WEPTXKEY ; 
 int IEEE80211_KEYBUF_SIZE ; 
 int IEEE80211_WEP_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char const*,char*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(const char *val, int d, int s, const struct afswtch *rafp)
{
	int		txkey;
	int		i, len;
	u_int8_t	data[IEEE80211_KEYBUF_SIZE];

	FUNC4(s, IEEE80211_IOC_WEP, IEEE80211_WEP_ON, 0, NULL);

	if (FUNC3((int)val[0]) && val[1] == ':') {
		txkey = val[0]-'0'-1;
		val += 2;

		for (i = 0; i < 4; i++) {
			FUNC0(data, sizeof(data));
			len = sizeof(data);
			val = FUNC2(val, ",", data, &len);
			if (val == NULL)
				FUNC1(1);

			FUNC4(s, IEEE80211_IOC_WEPKEY, i, len, data);
		}
	} else {
		FUNC0(data, sizeof(data));
		len = sizeof(data);
		FUNC2(val, NULL, data, &len);
		txkey = 0;

		FUNC4(s, IEEE80211_IOC_WEPKEY, 0, len, data);

		FUNC0(data, sizeof(data));
		for (i = 1; i < 4; i++)
			FUNC4(s, IEEE80211_IOC_WEPKEY, i, 0, data);
	}

	FUNC4(s, IEEE80211_IOC_WEPTXKEY, txkey, 0, NULL);
}