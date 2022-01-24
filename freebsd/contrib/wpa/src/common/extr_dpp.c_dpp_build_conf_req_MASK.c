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
struct dpp_authentication {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC0 (struct dpp_authentication*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,struct wpabuf*) ; 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*) ; 

struct wpabuf * FUNC8(struct dpp_authentication *auth,
				   const char *json)
{
	struct wpabuf *buf, *conf_req;

	conf_req = FUNC0(auth, json);
	if (!conf_req) {
		FUNC5(MSG_DEBUG,
			   "DPP: No configuration request data available");
		return NULL;
	}

	buf = FUNC3(0, 10 + 2 + FUNC7(conf_req));
	if (!buf) {
		FUNC6(conf_req);
		return NULL;
	}

	FUNC1(buf);
	FUNC2(buf, conf_req);
	FUNC6(conf_req);
	FUNC4(MSG_MSGDUMP, "DPP: GAS Config Request", buf);

	return buf;
}