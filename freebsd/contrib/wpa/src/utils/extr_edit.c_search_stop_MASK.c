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
 int /*<<< orphan*/  CMD_BUF_LEN ; 
 int /*<<< orphan*/  cmdbuf ; 
 int /*<<< orphan*/  cmdbuf_len ; 
 int /*<<< orphan*/  cmdbuf_pos ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* search_buf ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	char *match = FUNC4();
	search_buf[0] = '\0';
	FUNC3();
	if (match) {
		FUNC1(cmdbuf, match, CMD_BUF_LEN);
		cmdbuf_len = FUNC2(cmdbuf);
		cmdbuf_pos = cmdbuf_len;
	}
	FUNC0();
}