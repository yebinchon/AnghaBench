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
typedef  int /*<<< orphan*/  pwbuf ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6 (krb5_principal principal, char *password)
{
    krb5_error_code ret = 0;
    char pwbuf[128];

    if(password == NULL) {
	char *princ_name;
	char *prompt;

	FUNC4(context, principal, &princ_name);
	FUNC1(&prompt, "%s's Password: ", princ_name);
	FUNC2 (princ_name);
	ret = FUNC0(pwbuf, sizeof(pwbuf), prompt, 1);
	FUNC2 (prompt);
	if(ret){
	    return 0; /* XXX error code? */
	}
	password = pwbuf;
    }
    if(ret == 0)
	ret = FUNC3(kadm_handle, principal, password);
    FUNC5(pwbuf, 0, sizeof(pwbuf));
    return ret;
}