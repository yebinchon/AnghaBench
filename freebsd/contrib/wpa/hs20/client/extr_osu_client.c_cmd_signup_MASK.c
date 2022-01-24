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
struct wpa_ctrl {int dummy; } ;
struct hs20_osu_client {char* ifname; } ;
typedef  int /*<<< orphan*/  fname ;
typedef  int /*<<< orphan*/  dir ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int S_IROTH ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int S_IXOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct hs20_osu_client*,char*,int,int,char const*) ; 
 scalar_t__ errno ; 
 int FUNC2 (struct wpa_ctrl*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 struct wpa_ctrl* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct hs20_osu_client*,char*) ; 

__attribute__((used)) static int FUNC13(struct hs20_osu_client *ctx, int no_prod_assoc,
		      const char *friendly_name)
{
	char dir[255];
	char fname[300], buf[400];
	struct wpa_ctrl *mon;
	const char *ifname;
	int res;

	ifname = ctx->ifname;

	if (FUNC3(dir, sizeof(dir)) == NULL)
		return -1;

	FUNC6(fname, sizeof(fname), "%s/osu-info", dir);
	if (FUNC4(fname, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH) < 0 &&
	    errno != EEXIST) {
		FUNC11(MSG_INFO, "mkdir(%s) failed: %s",
			   fname, FUNC7(errno));
		return -1;
	}

	FUNC0(fname, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);

	FUNC6(buf, sizeof(buf), "SET osu_dir %s", fname);
	if (FUNC8(ifname, buf) < 0) {
		FUNC11(MSG_INFO, "Failed to configure osu_dir to wpa_supplicant");
		return -1;
	}

	mon = FUNC5(ifname);
	if (mon == NULL)
		return -1;

	FUNC11(MSG_INFO, "Starting OSU fetch");
	FUNC12(ctx, "Starting OSU provider information fetch");
	if (FUNC8(ifname, "FETCH_OSU") < 0) {
		FUNC11(MSG_INFO, "Could not start OSU fetch");
		FUNC10(mon);
		FUNC9(mon);
		return -1;
	}
	res = FUNC2(mon, "OSU provider fetch completed",
				buf, sizeof(buf));

	FUNC10(mon);
	FUNC9(mon);

	if (res < 0) {
		FUNC11(MSG_INFO, "OSU fetch did not complete");
		FUNC12(ctx, "OSU fetch did not complete");
		return -1;
	}
	FUNC11(MSG_INFO, "OSU provider fetch completed");

	return FUNC1(ctx, fname, 1, no_prod_assoc, friendly_name);
}