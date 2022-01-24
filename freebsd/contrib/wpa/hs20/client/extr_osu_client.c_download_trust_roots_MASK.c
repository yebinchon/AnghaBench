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
struct hs20_osu_client {int dummy; } ;
typedef  int /*<<< orphan*/  fname ;

/* Variables and functions */
 int FUNC0 (struct hs20_osu_client*,char const*,char*) ; 
 int FUNC1 (struct hs20_osu_client*,char const*,char*) ; 
 int FUNC2 (struct hs20_osu_client*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC7(struct hs20_osu_client *ctx,
				const char *pps_fname)
{
	char *dir, *pos;
	char fname[300];
	int ret, ret1;

	dir = FUNC4(pps_fname);
	if (dir == NULL)
		return -1;
	pos = FUNC5(dir, '/');
	if (pos == NULL) {
		FUNC3(dir);
		return -1;
	}
	*pos = '\0';

	FUNC6(fname, sizeof(fname), "%s/ca.pem", dir);
	ret = FUNC1(ctx, pps_fname, fname);
	FUNC6(fname, sizeof(fname), "%s/polupd-ca.pem", dir);
	ret1 = FUNC2(ctx, pps_fname, fname);
	if (ret == 0 && ret1 == -1)
		ret = -1;
	FUNC6(fname, sizeof(fname), "%s/aaa-ca.pem", dir);
	ret1 = FUNC0(ctx, pps_fname, fname);
	if (ret == 0 && ret1 == -1)
		ret = -1;

	FUNC3(dir);

	return ret;
}