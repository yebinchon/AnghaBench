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
struct wpabuf {int dummy; } ;
struct dpp_configuration {int /*<<< orphan*/  ssid_len; scalar_t__ ssid; } ;
struct dpp_authentication {char* discovery_override; } ;
typedef  int /*<<< orphan*/  ssid ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,char) ; 

__attribute__((used)) static struct wpabuf *
FUNC6(struct dpp_authentication *auth,
		     struct dpp_configuration *conf, size_t tailroom)
{
	struct wpabuf *buf;
	char ssid[6 * sizeof(conf->ssid) + 1];

#ifdef CONFIG_TESTING_OPTIONS
	if (auth->discovery_override)
		tailroom += os_strlen(auth->discovery_override);
#endif /* CONFIG_TESTING_OPTIONS */

	buf = FUNC3(200 + tailroom);
	if (!buf)
		return NULL;
	FUNC4(buf, "{\"wi-fi_tech\":\"infra\",\"discovery\":");
#ifdef CONFIG_TESTING_OPTIONS
	if (auth->discovery_override) {
		wpa_printf(MSG_DEBUG, "DPP: TESTING - discovery override: '%s'",
			   auth->discovery_override);
		wpabuf_put_str(buf, auth->discovery_override);
		wpabuf_put_u8(buf, ',');
		return buf;
	}
#endif /* CONFIG_TESTING_OPTIONS */
	FUNC4(buf, "{\"ssid\":\"");
	FUNC0(ssid, sizeof(ssid),
			   (const char *) conf->ssid, conf->ssid_len);
	FUNC4(buf, ssid);
	FUNC4(buf, "\"},");

	return buf;
}