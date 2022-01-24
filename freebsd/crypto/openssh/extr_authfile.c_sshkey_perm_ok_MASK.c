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
typedef  int u_int ;
struct stat {scalar_t__ st_uid; int st_mode; } ;

/* Variables and functions */
 int SSH_ERR_KEY_BAD_PERMISSIONS ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 scalar_t__ FUNC3 () ; 

int
FUNC4(int fd, const char *filename)
{
	struct stat st;

	if (FUNC2(fd, &st) < 0)
		return SSH_ERR_SYSTEM_ERROR;
	/*
	 * if a key owned by the user is accessed, then we check the
	 * permissions of the file. if the key owned by a different user,
	 * then we don't care.
	 */
#ifdef HAVE_CYGWIN
	if (check_ntsec(filename))
#endif
	if ((st.st_uid == FUNC3()) && (st.st_mode & 077) != 0) {
		FUNC1("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		FUNC1("@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @");
		FUNC1("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		FUNC1("Permissions 0%3.3o for '%s' are too open.",
		    (u_int)st.st_mode & 0777, filename);
		FUNC1("It is required that your private key files are NOT accessible by others.");
		FUNC1("This private key will be ignored.");
		return SSH_ERR_KEY_BAD_PERMISSIONS;
	}
	return 0;
}