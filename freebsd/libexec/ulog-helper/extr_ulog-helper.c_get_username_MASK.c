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
struct passwd {scalar_t__ pw_uid; char const* pw_name; } ;

/* Variables and functions */
 char* FUNC0 () ; 
 struct passwd* FUNC1 (char const*) ; 
 struct passwd* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static const char *
FUNC4(void)
{
	const struct passwd *pw;
	const char *login;
	uid_t uid;

	/*
	 * Attempt to determine the username corresponding to this login
	 * session.  First, validate the results of getlogin() against
	 * the password database.  If getlogin() returns invalid data,
	 * return an arbitrary username corresponding to this uid.
	 */
	uid = FUNC3();
	if ((login = FUNC0()) != NULL && (pw = FUNC1(login)) != NULL &&
	    pw->pw_uid == uid)
		return (login);
	if ((pw = FUNC2(uid)) != NULL)
		return (pw->pw_name);
	return (NULL);
}