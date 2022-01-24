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
typedef  int ev_uint32_t ;

/* Variables and functions */
 char* LIBEVENT_VERSION ; 
 int LIBEVENT_VERSION_NUMBER ; 
 char* FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(void)
{
	ev_uint32_t v_compile_maj;
	ev_uint32_t v_run_maj;

	v_compile_maj = LIBEVENT_VERSION_NUMBER & 0xffff0000;
	v_run_maj = FUNC1() & 0xffff0000;
	if (v_compile_maj != v_run_maj) {
		FUNC2(stderr,
			"Incompatible libevent versions: have %s, built with %s\n",
			FUNC0(),
			LIBEVENT_VERSION);
		return 0;
	}
	return 1;
}