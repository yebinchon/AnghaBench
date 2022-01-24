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
typedef  int /*<<< orphan*/  utsname ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct linux_newuname_args {int /*<<< orphan*/  buf; } ;
struct l_new_utsname {char* sysname; char* release; char* version; char* machine; int /*<<< orphan*/  domainname; int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int LINUX_MAX_UTSNAME ; 
 int /*<<< orphan*/  FUNC0 (struct l_new_utsname*,int) ; 
 int FUNC1 (struct l_new_utsname*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,char*) ; 
 char* linux_kplatform ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* version ; 

int
FUNC7(struct thread *td, struct linux_newuname_args *args)
{
	struct l_new_utsname utsname;
	char osname[LINUX_MAX_UTSNAME];
	char osrelease[LINUX_MAX_UTSNAME];
	char *p;

	FUNC4(td, osname);
	FUNC5(td, osrelease);

	FUNC0(&utsname, sizeof(utsname));
	FUNC6(utsname.sysname, osname, LINUX_MAX_UTSNAME);
	FUNC3(td->td_ucred, utsname.nodename, LINUX_MAX_UTSNAME);
	FUNC2(td->td_ucred, utsname.domainname, LINUX_MAX_UTSNAME);
	FUNC6(utsname.release, osrelease, LINUX_MAX_UTSNAME);
	FUNC6(utsname.version, version, LINUX_MAX_UTSNAME);
	for (p = utsname.version; *p != '\0'; ++p)
		if (*p == '\n') {
			*p = '\0';
			break;
		}
	FUNC6(utsname.machine, linux_kplatform, LINUX_MAX_UTSNAME);

	return (FUNC1(&utsname, args->buf, sizeof(utsname)));
}