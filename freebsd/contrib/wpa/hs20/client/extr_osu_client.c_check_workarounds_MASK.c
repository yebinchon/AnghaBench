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
struct hs20_osu_client {unsigned long workarounds; int /*<<< orphan*/  http; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int WORKAROUND_OCSP_OPTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hs20_osu_client *ctx)
{
	FILE *f;
	char buf[100];
	unsigned long int val = 0;

	f = FUNC2("hs20-osu-client.workarounds", "r");
	if (f == NULL)
		return;

	if (FUNC1(buf, sizeof(buf), f))
		val = FUNC4(buf, NULL, 16);

	FUNC0(f);

	if (val) {
		FUNC5(MSG_INFO, "Workarounds enabled: 0x%lx", val);
		ctx->workarounds = val;
		if (ctx->workarounds & WORKAROUND_OCSP_OPTIONAL)
			FUNC3(ctx->http, 1);
	}
}