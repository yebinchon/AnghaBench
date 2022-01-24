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
 char* hw_buf ; 
 int hw_buf_idx ; 
 int hw_buf_newline ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char *cap)
{
	int len;

	len = FUNC2(cap);

	if ((hw_buf_idx + len + 2) >= 79) {
		FUNC0("%s,\n", hw_buf);
		hw_buf_idx  = 0;
		hw_buf_newline = true;
	}
	if (hw_buf_newline)
		hw_buf_idx += FUNC1(hw_buf + hw_buf_idx, "  ");
	else
		hw_buf_idx += FUNC1(hw_buf + hw_buf_idx, ", ");
	hw_buf_newline = false;


	hw_buf_idx += FUNC1(hw_buf + hw_buf_idx, "%s", cap);
}