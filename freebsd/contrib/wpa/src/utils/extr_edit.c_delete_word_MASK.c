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
 int cmdbuf_len ; 
 int cmdbuf_pos ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	int pos;

	FUNC0();
	pos = cmdbuf_pos;
	while (pos > 0 && cmdbuf[pos - 1] == ' ')
		pos--;
	while (pos > 0 && cmdbuf[pos - 1] != ' ')
		pos--;
	FUNC2(cmdbuf + pos, cmdbuf + cmdbuf_pos, cmdbuf_len - cmdbuf_pos);
	cmdbuf_len -= cmdbuf_pos - pos;
	cmdbuf_pos = pos;
	FUNC1();
}