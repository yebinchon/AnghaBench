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
struct dpp_bootstrap_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct dpp_bootstrap_info*) ; 
 scalar_t__ FUNC1 (struct dpp_bootstrap_info*,char const*) ; 
 scalar_t__ FUNC2 (struct dpp_bootstrap_info*,char const*) ; 
 scalar_t__ FUNC3 (struct dpp_bootstrap_info*,char const*) ; 
 scalar_t__ FUNC4 (struct dpp_bootstrap_info*,char const*) ; 
 scalar_t__ FUNC5 (struct dpp_bootstrap_info*,char const*) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 struct dpp_bootstrap_info* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct dpp_bootstrap_info * FUNC12(const char *uri)
{
	const char *pos = uri;
	const char *end;
	const char *chan_list = NULL, *mac = NULL, *info = NULL, *pk = NULL;
	struct dpp_bootstrap_info *bi;

	FUNC10(MSG_DEBUG, "DPP: URI", uri, FUNC7(uri));

	if (FUNC8(pos, "DPP:", 4) != 0) {
		FUNC11(MSG_INFO, "DPP: Not a DPP URI");
		return NULL;
	}
	pos += 4;

	for (;;) {
		end = FUNC6(pos, ';');
		if (!end)
			break;

		if (end == pos) {
			/* Handle terminating ";;" and ignore unexpected ";"
			 * for parsing robustness. */
			pos++;
			continue;
		}

		if (pos[0] == 'C' && pos[1] == ':' && !chan_list)
			chan_list = pos + 2;
		else if (pos[0] == 'M' && pos[1] == ':' && !mac)
			mac = pos + 2;
		else if (pos[0] == 'I' && pos[1] == ':' && !info)
			info = pos + 2;
		else if (pos[0] == 'K' && pos[1] == ':' && !pk)
			pk = pos + 2;
		else
			FUNC10(MSG_DEBUG,
					  "DPP: Ignore unrecognized URI parameter",
					  pos, end - pos);
		pos = end + 1;
	}

	if (!pk) {
		FUNC11(MSG_INFO, "DPP: URI missing public-key");
		return NULL;
	}

	bi = FUNC9(sizeof(*bi));
	if (!bi)
		return NULL;

	if (FUNC1(bi, uri) < 0 ||
	    FUNC2(bi, chan_list) < 0 ||
	    FUNC4(bi, mac) < 0 ||
	    FUNC3(bi, info) < 0 ||
	    FUNC5(bi, pk) < 0) {
		FUNC0(bi);
		bi = NULL;
	}

	return bi;
}