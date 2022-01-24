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
typedef  int /*<<< orphan*/  xml_node_t ;
struct hs20_osu_client {int dummy; } ;

/* Variables and functions */
 int DM_RESP_BAD_REQUEST ; 
 int DM_RESP_NOT_FOUND ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct hs20_osu_client *ctx, xml_node_t *exec)
{
	char *locuri;
	int ret;

	locuri = FUNC2(ctx, exec);
	if (locuri == NULL) {
		FUNC5(MSG_INFO, "No Target LocURI node found");
		return DM_RESP_BAD_REQUEST;
	}

	FUNC5(MSG_INFO, "Target LocURI: %s", locuri);

	if (FUNC4(locuri, "./DevDetail/Ext/org.wi-fi/Wi-Fi/Ops/"
			  "launchBrowserToURI") == 0) {
		ret = FUNC0(ctx, exec);
	} else if (FUNC4(locuri, "./DevDetail/Ext/org.wi-fi/Wi-Fi/Ops/"
			  "getCertificate") == 0) {
		ret = FUNC1(ctx, exec);
	} else {
		FUNC5(MSG_INFO, "Unsupported exec Target LocURI");
		ret = DM_RESP_NOT_FOUND;
	}
	FUNC3(locuri);

	return ret;
}