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
struct utmp {int /*<<< orphan*/  ut_id; int /*<<< orphan*/  ut_pid; int /*<<< orphan*/  ut_type; int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_addr; int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_name; int /*<<< orphan*/  ut_line; int /*<<< orphan*/  ut_time; } ;
struct hostent {int /*<<< orphan*/ * h_addr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_PROCESS ; 
 char* FUNC0 (char*) ; 
 struct hostent* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char const* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct utmp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9 (struct utmp *utmp, char *tty,
	      const char *username, const char *hostname)
{
    char *ttyx = FUNC0 (tty);

    FUNC5(utmp, 0, sizeof(*utmp));
    utmp->ut_time = FUNC8(NULL);
    FUNC7(utmp->ut_line, ttyx, sizeof(utmp->ut_line));
    FUNC7(utmp->ut_name, username, sizeof(utmp->ut_name));

# ifdef HAVE_STRUCT_UTMP_UT_USER
    strncpy(utmp->ut_user, username, sizeof(utmp->ut_user));
# endif

# ifdef HAVE_STRUCT_UTMP_UT_ADDR
    if (hostname[0]) {
        struct hostent *he;
	if ((he = gethostbyname(hostname)))
	    memcpy(&utmp->ut_addr, he->h_addr_list[0],
		   sizeof(utmp->ut_addr));
    }
# endif

# ifdef HAVE_STRUCT_UTMP_UT_HOST
    shrink_hostname (hostname, utmp->ut_host, sizeof(utmp->ut_host));
# endif

# ifdef HAVE_STRUCT_UTMP_UT_TYPE
    utmp->ut_type = USER_PROCESS;
# endif

# ifdef HAVE_STRUCT_UTMP_UT_PID
    utmp->ut_pid = getpid();
# endif

# ifdef HAVE_STRUCT_UTMP_UT_ID
    strncpy(utmp->ut_id, make_id(ttyx), sizeof(utmp->ut_id));
# endif
}