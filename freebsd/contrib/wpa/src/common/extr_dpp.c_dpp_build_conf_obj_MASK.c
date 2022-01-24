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
struct dpp_configuration {int /*<<< orphan*/  akm; } ;
struct dpp_authentication {struct dpp_configuration* conf_sta; struct dpp_configuration* conf_ap; scalar_t__ config_obj_override; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct dpp_authentication*,int,struct dpp_configuration*) ; 
 struct wpabuf* FUNC2 (struct dpp_authentication*,int,struct dpp_configuration*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf *
FUNC6(struct dpp_authentication *auth, int ap)
{
	struct dpp_configuration *conf;

#ifdef CONFIG_TESTING_OPTIONS
	if (auth->config_obj_override) {
		wpa_printf(MSG_DEBUG, "DPP: Testing - Config Object override");
		return wpabuf_alloc_copy(auth->config_obj_override,
					 os_strlen(auth->config_obj_override));
	}
#endif /* CONFIG_TESTING_OPTIONS */

	conf = ap ? auth->conf_ap : auth->conf_sta;
	if (!conf) {
		FUNC4(MSG_DEBUG,
			   "DPP: No configuration available for Enrollee(%s) - reject configuration request",
			   ap ? "ap" : "sta");
		return NULL;
	}

	if (FUNC0(conf->akm))
		return FUNC1(auth, ap, conf);
	return FUNC2(auth, ap, conf);
}