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
typedef  scalar_t__ uid_t ;
struct passwd {char* pw_name; scalar_t__ pw_uid; } ;

/* Variables and functions */
 scalar_t__ RealUid ; 
 char* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 struct passwd* FUNC1 (char*) ; 
 struct passwd* FUNC2 (scalar_t__) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *
FUNC6()
{
	static char *myname = NULL;
	extern char *FUNC7();
	register struct passwd *pw;

	/* cache the result */
	if (myname == NULL)
	{
		myname = FUNC7();
		if (myname == NULL || myname[0] == '\0')
		{
			pw = FUNC2(RealUid);
			if (pw != NULL)
				myname = pw->pw_name;
		}
		else
		{
			uid_t uid = RealUid;

			if ((pw = FUNC1(myname)) == NULL ||
			      (uid != 0 && uid != pw->pw_uid))
			{
				pw = FUNC2(uid);
				if (pw != NULL)
					myname = pw->pw_name;
			}
		}
		if (myname == NULL || myname[0] == '\0')
		{
			FUNC5("554 5.3.0 Who are you?");
			myname = "postmaster";
		}
		else if (FUNC4(myname, ",;:/|\"\\") != NULL)
			myname = FUNC0(myname, NULL);
		else
			myname = FUNC3(myname);
	}
	return myname;
}