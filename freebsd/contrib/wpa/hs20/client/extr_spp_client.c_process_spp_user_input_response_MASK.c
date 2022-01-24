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
typedef  int /*<<< orphan*/  fname ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hs20_osu_client*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct hs20_osu_client *ctx,
					   const char *session_id,
					   xml_node_t *add_mo)
{
	int ret;
	char fname[300];

	FUNC0(ctx, "addMO", add_mo);

	FUNC4(MSG_INFO, "Subscription registration completed");

	if (FUNC1(ctx, add_mo, fname, sizeof(fname)) < 0) {
		FUNC4(MSG_INFO, "Could not add MO");
		ret = FUNC2(
			ctx, session_id,
			"Error occurred",
			"MO addition or update failed");
		return 0;
	}

	ret = FUNC2(ctx, session_id, "OK", NULL);
	if (ret == 0)
		FUNC3(ctx, fname);

	return 0;
}