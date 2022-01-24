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

/* Variables and functions */
 char* FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (char const*,char const*) ; 
 char* FUNC5 () ; 

char *
FUNC6(const char *password, const char *salt)
{
	char *crypted;

	/*
	 * If we don't have a salt we are encrypting a fake password for
	 * for timing purposes.  Pick an appropriate salt.
	 */
	if (salt == NULL)
		salt = FUNC5();

# ifdef HAVE_MD5_PASSWORDS
	if (is_md5_salt(salt))
		crypted = md5_crypt(password, salt);
	else
		crypted = crypt(password, salt);
# elif defined(__hpux) && !defined(HAVE_SECUREWARE)
	if (iscomsec())
		crypted = bigcrypt(password, salt);
	else
		crypted = crypt(password, salt);
# elif defined(HAVE_SECUREWARE)
	crypted = bigcrypt(password, salt);
# else
	crypted = FUNC1(password, salt);
# endif

	return crypted;
}