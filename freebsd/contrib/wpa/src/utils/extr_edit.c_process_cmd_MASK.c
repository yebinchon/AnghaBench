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
 char* cmdbuf ; 
 size_t cmdbuf_len ; 
 scalar_t__ cmdbuf_pos ; 
 scalar_t__ currbuf_valid ; 
 int /*<<< orphan*/  edit_cb_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* ps2 ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC4(void)
{
	currbuf_valid = 0;
	if (cmdbuf_len == 0) {
		FUNC3("\n%s> ", ps2 ? ps2 : "");
		FUNC1(stdout);
		return;
	}
	FUNC3("\n");
	cmdbuf[cmdbuf_len] = '\0';
	FUNC2(cmdbuf);
	cmdbuf_pos = 0;
	cmdbuf_len = 0;
	FUNC0(edit_cb_ctx, cmdbuf);
	FUNC3("%s> ", ps2 ? ps2 : "");
	FUNC1(stdout);
}