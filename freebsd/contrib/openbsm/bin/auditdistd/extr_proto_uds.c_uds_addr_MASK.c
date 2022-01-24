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
struct sockaddr_un {int /*<<< orphan*/  sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(const char *addr, struct sockaddr_un *sunp)
{

	if (addr == NULL)
		return (-1);

	if (FUNC2(addr, "uds://", 6) == 0)
		addr += 6;
	else if (FUNC2(addr, "unix://", 7) == 0)
		addr += 7;
	else if (addr[0] == '/' &&	/* If it starts from /... */
	    FUNC3(addr, "://") == NULL)/* ...and there is no prefix... */
		;			/* ...we assume its us. */
	else
		return (-1);

	sunp->sun_family = AF_UNIX;
	if (FUNC1(sunp->sun_path, addr, sizeof(sunp->sun_path)) >=
	    sizeof(sunp->sun_path)) {
		return (ENAMETOOLONG);
	}
#ifdef HAVE_SOCKADDR_STORAGE_SS_LEN
	sunp->sun_len = SUN_LEN(sunp);
#endif

	return (0);
}