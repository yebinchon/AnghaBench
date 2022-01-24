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
struct dpp_bootstrap_info {char* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6(struct dpp_bootstrap_info *bi, const char *info)
{
	const char *end;

	if (!info)
		return 0;

	end = FUNC3(info, ';');
	if (!end)
		end = info + FUNC4(info);
	bi->info = FUNC1(end - info + 1);
	if (!bi->info)
		return -1;
	FUNC2(bi->info, info, end - info);
	bi->info[end - info] = '\0';
	FUNC5(MSG_DEBUG, "DPP: URI(information): %s", bi->info);
	if (!FUNC0(bi->info)) {
		FUNC5(MSG_DEBUG, "DPP: Invalid URI information payload");
		return -1;
	}

	return 0;
}