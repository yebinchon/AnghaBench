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
struct utsname {char* sysname; char* nodename; char* release; char* version; char* machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (struct utsname*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(char *name, int namlen)
{
# if !defined(_MINIX) && !defined(__EMX__) && !defined(WINNT_NATIVE)
    int     i, retval;
    struct utsname uts;

    retval = FUNC3(&uts);

#  ifdef DEBUG
    xprintf(CGETS(23, 14, "sysname:  %s\n"), uts.sysname);
    xprintf(CGETS(23, 15, "nodename: %s\n"), uts.nodename);
    xprintf(CGETS(23, 16, "release:  %s\n"), uts.release);
    xprintf(CGETS(23, 17, "version:  %s\n"), uts.version);
    xprintf(CGETS(23, 18, "machine:  %s\n"), uts.machine);
#  endif /* DEBUG */
    i = FUNC1(uts.nodename) + 1;
    (void) FUNC2(name, uts.nodename, i < namlen ? i : namlen);

    return retval;
# else /* !_MINIX && !__EMX__ */
    if (namlen > 0) {
#  ifdef __EMX__
	(void) strncpy(name, "OS/2", namlen);
#  else /* _MINIX */
	(void) strncpy(name, "minix", namlen);
#  endif /* __EMX__ */
	name[namlen-1] = '\0';
    }
    return(0);
#endif /* _MINIX && !__EMX__ */
}