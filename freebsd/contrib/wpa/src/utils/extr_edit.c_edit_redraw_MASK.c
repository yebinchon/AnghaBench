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
 size_t cmdbuf_pos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* ps2 ; 
 int /*<<< orphan*/  stdout ; 

void FUNC2(void)
{
	char tmp;
	cmdbuf[cmdbuf_len] = '\0';
	FUNC1("\r%s> %s", ps2 ? ps2 : "", cmdbuf);
	if (cmdbuf_pos != cmdbuf_len) {
		tmp = cmdbuf[cmdbuf_pos];
		cmdbuf[cmdbuf_pos] = '\0';
		FUNC1("\r%s> %s", ps2 ? ps2 : "", cmdbuf);
		cmdbuf[cmdbuf_pos] = tmp;
	}
	FUNC0(stdout);
}