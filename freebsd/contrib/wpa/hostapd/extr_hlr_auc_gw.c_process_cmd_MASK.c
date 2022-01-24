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

/* Variables and functions */
 int FUNC0 (char*,char*,size_t) ; 
 int FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*,char*,size_t) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC6(char *cmd, char *resp, size_t resp_len)
{
	if (FUNC3(cmd, "SIM-REQ-AUTH ", 13) == 0)
		return FUNC5(cmd + 13, resp, resp_len);

	if (FUNC3(cmd, "GSM-AUTH-REQ ", 13) == 0)
		return FUNC2(cmd + 13, resp, resp_len);

	if (FUNC3(cmd, "AKA-REQ-AUTH ", 13) == 0)
		return FUNC1(cmd + 13, resp, resp_len);

	if (FUNC3(cmd, "AKA-AUTS ", 9) == 0)
		return FUNC0(cmd + 9, resp, resp_len);

	FUNC4("Unknown request: %s\n", cmd);
	return -1;
}