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
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  defuserbuf ;

/* Variables and functions */
 scalar_t__ DefUid ; 
 char* DefUser ; 
 int /*<<< orphan*/  FUNC0 (char*,long,char*) ; 
 struct passwd* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (int,int) ; 

void
FUNC4()
{
	struct passwd *defpwent;
	static char defuserbuf[40];

	DefUser = defuserbuf;
	defpwent = FUNC1(DefUid);
	(void) FUNC2(defuserbuf,
			  (defpwent == NULL || defpwent->pw_name == NULL)
			   ? "nobody" : defpwent->pw_name,
			  sizeof(defuserbuf));
	if (FUNC3(37, 4))
		FUNC0("setdefuser: DefUid=%ld, DefUser=%s\n",
			   (long) DefUid, DefUser);
}