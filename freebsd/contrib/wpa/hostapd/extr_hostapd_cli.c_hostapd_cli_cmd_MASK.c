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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,char*) ; 
 int FUNC1 (struct wpa_ctrl*,char*) ; 
 scalar_t__ FUNC2 (char*,int,char const*,int,char**) ; 

__attribute__((used)) static int FUNC3(struct wpa_ctrl *ctrl, const char *cmd,
			   int min_args, int argc, char *argv[])
{
	char buf[4096];

	if (argc < min_args) {
		FUNC0("Invalid %s command - at least %d argument%s required.\n",
		       cmd, min_args, min_args > 1 ? "s are" : " is");
		return -1;
	}
	if (FUNC2(buf, sizeof(buf), cmd, argc, argv) < 0)
		return -1;
	return FUNC1(ctrl, buf);
}