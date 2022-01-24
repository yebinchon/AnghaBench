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
typedef  int u_int16_t ;
struct valuelist {int dummy; } ;
struct servent {char const* s_name; } ;

/* Variables and functions */
 struct servent* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct valuelist* servicelist ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

const char *
FUNC4(u_int16_t port, const char *proto) {	/*%< Host byte order. */
	static char number[8];
	struct servent *ss;

	if (servicelist == (struct valuelist *)0)
		FUNC2();
	ss = FUNC0(FUNC1(port), proto);
	if (ss == NULL)  {
		(void) FUNC3(number, "%d", port);
		return (number);
	}
	return (ss->s_name);
}