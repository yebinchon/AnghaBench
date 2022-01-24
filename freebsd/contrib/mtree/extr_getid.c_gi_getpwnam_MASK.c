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
struct passwd {int dummy; } ;

/* Variables and functions */
 struct passwd _pw_passwd ; 
 int /*<<< orphan*/  _pw_stayopen ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static struct passwd *
FUNC3(const char *name)
{
	int rval;

	if (!FUNC2())
		return NULL;
	rval = FUNC1(1, 0, name);
	if (!_pw_stayopen)
		FUNC0();
	return (rval) ? &_pw_passwd : NULL;
}