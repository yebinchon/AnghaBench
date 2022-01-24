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
struct tags {unsigned int id; char const* name; } ;

/* Variables and functions */
 struct tags* knownflags ; 
 size_t FUNC0 (struct tags*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC2(unsigned int flag)
{
	static char buf[32];
	size_t i;
	struct tags *tp;

	for (i = 0, tp = knownflags; i < FUNC0(knownflags); i++, tp++)
		if (tp->id == flag)
			return (tp->name);

	FUNC1(buf, "%u", flag);

	return (buf);
}