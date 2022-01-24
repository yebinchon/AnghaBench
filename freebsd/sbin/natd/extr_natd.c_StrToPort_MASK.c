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
typedef  int /*<<< orphan*/  u_short ;
struct servent {int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 
 struct servent* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**,int) ; 

u_short FUNC4 (const char* str, const char* proto)
{
	u_short		port;
	struct servent*	sp;
	char*		end;

	port = FUNC3 (str, &end, 10);
	if (end != str)
		return FUNC2 (port);

	sp = FUNC1 (str, proto);
	if (!sp)
		FUNC0 (1, "%s/%s: unknown service", str, proto);

	return sp->s_port;
}