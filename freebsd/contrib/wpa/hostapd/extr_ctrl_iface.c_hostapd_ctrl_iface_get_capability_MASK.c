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
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*,size_t,char*) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd,
					     const char *field, char *buf,
					     size_t buflen)
{
	FUNC3(MSG_DEBUG, "CTRL_IFACE: GET_CAPABILITY '%s'", field);

#ifdef CONFIG_DPP
	if (os_strcmp(field, "dpp") == 0) {
		int res;

#ifdef CONFIG_DPP2
		res = os_snprintf(buf, buflen, "DPP=2");
#else /* CONFIG_DPP2 */
		res = os_snprintf(buf, buflen, "DPP=1");
#endif /* CONFIG_DPP2 */
		if (os_snprintf_error(buflen, res))
			return -1;
		return res;
	}
#endif /* CONFIG_DPP */

	FUNC3(MSG_DEBUG, "CTRL_IFACE: Unknown GET_CAPABILITY field '%s'",
		   field);

	return -1;
}