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
struct wpa_ssid {char const* passphrase; int psk_set; int /*<<< orphan*/  psk; int /*<<< orphan*/ * ext_psk; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int PMK_LEN ; 
 char const* FUNC0 (char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC13(const struct parse_data *data,
				struct wpa_ssid *ssid, int line,
				const char *value)
{
#ifdef CONFIG_EXT_PASSWORD
	if (os_strncmp(value, "ext:", 4) == 0) {
		str_clear_free(ssid->passphrase);
		ssid->passphrase = NULL;
		ssid->psk_set = 0;
		os_free(ssid->ext_psk);
		ssid->ext_psk = os_strdup(value + 4);
		if (ssid->ext_psk == NULL)
			return -1;
		wpa_printf(MSG_DEBUG, "PSK: External password '%s'",
			   ssid->ext_psk);
		return 0;
	}
#endif /* CONFIG_EXT_PASSWORD */

	if (*value == '"') {
#ifndef CONFIG_NO_PBKDF2
		const char *pos;
		size_t len;

		value++;
		pos = FUNC8(value, '"');
		if (pos)
			len = pos - value;
		else
			len = FUNC6(value);
		if (len < 8 || len > 63) {
			FUNC12(MSG_ERROR, "Line %d: Invalid passphrase "
				   "length %lu (expected: 8..63) '%s'.",
				   line, (unsigned long) len, value);
			return -1;
		}
		FUNC10(MSG_MSGDUMP, "PSK (ASCII passphrase)",
				      (u8 *) value, len);
		if (FUNC1((u8 *) value, len)) {
			FUNC12(MSG_ERROR,
				   "Line %d: Invalid passphrase character",
				   line);
			return -1;
		}
		if (ssid->passphrase && FUNC6(ssid->passphrase) == len &&
		    FUNC4(ssid->passphrase, value, len) == 0) {
			/* No change to the previously configured value */
			return 1;
		}
		ssid->psk_set = 0;
		FUNC9(ssid->passphrase);
		ssid->passphrase = FUNC0(value, len);
		if (ssid->passphrase == NULL)
			return -1;
		return 0;
#else /* CONFIG_NO_PBKDF2 */
		wpa_printf(MSG_ERROR, "Line %d: ASCII passphrase not "
			   "supported.", line);
		return -1;
#endif /* CONFIG_NO_PBKDF2 */
	}

	if (FUNC2(value, ssid->psk, PMK_LEN) ||
	    value[PMK_LEN * 2] != '\0') {
		FUNC12(MSG_ERROR, "Line %d: Invalid PSK '%s'.",
			   line, value);
		return -1;
	}

	FUNC9(ssid->passphrase);
	ssid->passphrase = NULL;

	ssid->psk_set = 1;
	FUNC11(MSG_MSGDUMP, "PSK", ssid->psk, PMK_LEN);
	return 0;
}