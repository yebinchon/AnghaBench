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
 scalar_t__ MSG_DONTWAIT ; 
 int echo ; 
 scalar_t__ flags ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int use_async ; 
 scalar_t__ use_rs ; 

__attribute__((used)) static int FUNC2(const char *arg)
{
	if (FUNC0(arg) == 1) {
		switch (arg[0]) {
		case 's':
			use_rs = 0;
			break;
		case 'a':
			use_async = 1;
			break;
		case 'b':
			flags = 0;
			break;
		case 'n':
			flags = MSG_DONTWAIT;
			break;
		case 'e':
			echo = 1;
			break;
		default:
			return -1;
		}
	} else {
		if (!FUNC1("socket", arg, 6)) {
			use_rs = 0;
		} else if (!FUNC1("async", arg, 5)) {
			use_async = 1;
		} else if (!FUNC1("block", arg, 5)) {
			flags = 0;
		} else if (!FUNC1("nonblock", arg, 8)) {
			flags = MSG_DONTWAIT;
		} else if (!FUNC1("echo", arg, 4)) {
			echo = 1;
		} else {
			return -1;
		}
	}
	return 0;
}