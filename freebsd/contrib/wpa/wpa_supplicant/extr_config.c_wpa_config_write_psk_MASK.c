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
struct wpa_ssid {int /*<<< orphan*/  psk; scalar_t__ psk_set; scalar_t__ passphrase; scalar_t__ ext_psk; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMK_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (char*,size_t,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 int FUNC4 (scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char * FUNC7(const struct parse_data *data,
				   struct wpa_ssid *ssid)
{
#ifdef CONFIG_EXT_PASSWORD
	if (ssid->ext_psk) {
		size_t len = 4 + os_strlen(ssid->ext_psk) + 1;
		char *buf = os_malloc(len);
		int res;

		if (buf == NULL)
			return NULL;
		res = os_snprintf(buf, len, "ext:%s", ssid->ext_psk);
		if (os_snprintf_error(len, res)) {
			os_free(buf);
			buf = NULL;
		}
		return buf;
	}
#endif /* CONFIG_EXT_PASSWORD */

	if (ssid->passphrase)
		return FUNC5(
			(const u8 *) ssid->passphrase,
			FUNC4(ssid->passphrase));

	if (ssid->psk_set)
		return FUNC6(ssid->psk, PMK_LEN);

	return NULL;
}