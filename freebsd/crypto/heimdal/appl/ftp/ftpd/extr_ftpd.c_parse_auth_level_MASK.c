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
 int AUTH_FTP ; 
 int AUTH_OTP ; 
 int AUTH_PLAIN ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(char *str)
{
    char *p;
    int ret = 0;
    char *foo = NULL;

    for(p = FUNC1(str, ",", &foo);
	p;
	p = FUNC1(NULL, ",", &foo)) {
	if(FUNC0(p, "user") == 0)
	    ;
#ifdef OTP
	else if(strcmp(p, "otp") == 0)
	    ret |= AUTH_PLAIN|AUTH_OTP;
#endif
	else if(FUNC0(p, "ftp") == 0 ||
		FUNC0(p, "safe") == 0)
	    ret |= AUTH_FTP;
	else if(FUNC0(p, "plain") == 0)
	    ret |= AUTH_PLAIN;
	else if(FUNC0(p, "none") == 0)
	    ret |= AUTH_PLAIN|AUTH_FTP;
	else
	    FUNC2("bad value for -a: `%s'", p);
    }
    return ret;
}