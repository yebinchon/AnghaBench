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
 int MSG_DEBUG ; 
 int MSG_EXCESSIVE ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC2(const char *cmd)
{
	if (FUNC0(cmd, "PING") == 0 ||
	    FUNC1(cmd, "BSS ", 4) == 0 ||
	    FUNC1(cmd, "GET_NETWORK ", 12) == 0 ||
	    FUNC1(cmd, "STATUS", 6) == 0 ||
	    FUNC1(cmd, "STA ", 4) == 0 ||
	    FUNC1(cmd, "STA-", 4) == 0)
		return MSG_EXCESSIVE;
	return MSG_DEBUG;
}