#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ssh {TYPE_1__* authctxt; } ;
struct passwd {char* pw_passwd; } ;
struct TYPE_2__ {scalar_t__ valid; struct passwd* pw; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 char* FUNC0 (struct passwd*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char*) ; 

int
FUNC3(struct ssh *ssh, const char *password)
{
	Authctxt *authctxt = ssh->authctxt;
	struct passwd *pw = authctxt->pw;
	char *encrypted_password, *salt = NULL;

	/* Just use the supplied fake password if authctxt is invalid */
	char *pw_password = authctxt->valid ? FUNC0(pw) : pw->pw_passwd;

	/* Check for users with no password. */
	if (FUNC1(pw_password, "") == 0 && FUNC1(password, "") == 0)
		return (1);

	/*
	 * Encrypt the candidate password using the proper salt, or pass a
	 * NULL and let xcrypt pick one.
	 */
	if (authctxt->valid && pw_password[0] && pw_password[1])
		salt = pw_password;
	encrypted_password = FUNC2(password, salt);

	/*
	 * Authentication is accepted if the encrypted passwords
	 * are identical.
	 */
	return encrypted_password != NULL &&
	    FUNC1(encrypted_password, pw_password) == 0;
}