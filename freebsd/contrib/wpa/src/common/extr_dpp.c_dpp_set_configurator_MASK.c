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
struct dpp_global {int dummy; } ;
struct dpp_authentication {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (struct dpp_authentication*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_global*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6(struct dpp_global *dpp, void *msg_ctx,
			 struct dpp_authentication *auth,
			 const char *cmd)
{
	const char *pos;

	if (!cmd)
		return 0;

	FUNC5(MSG_DEBUG, "DPP: Set configurator parameters: %s", cmd);

	pos = FUNC3(cmd, " configurator=");
	if (pos) {
		pos += 14;
		auth->conf = FUNC2(dpp, FUNC0(pos));
		if (!auth->conf) {
			FUNC5(MSG_INFO,
				   "DPP: Could not find the specified configurator");
			return -1;
		}
	}

	if (FUNC1(auth, cmd) < 0) {
		FUNC4(msg_ctx, MSG_INFO,
			"DPP: Failed to set configurator parameters");
		return -1;
	}
	return 0;
}