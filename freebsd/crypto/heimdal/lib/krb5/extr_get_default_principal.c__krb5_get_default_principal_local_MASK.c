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
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 struct passwd* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

krb5_error_code
FUNC8 (krb5_context context,
				   krb5_principal *princ)
{
    krb5_error_code ret;
    const char *user;
    uid_t uid;

    *princ = NULL;

    uid = FUNC4();
    if(uid == 0) {
	user = FUNC2();
	if(user == NULL)
	    user = FUNC1();
	if(user != NULL && FUNC7(user, "root") != 0)
	    ret = FUNC5(context, princ, NULL, user, "root", NULL);
	else
	    ret = FUNC5(context, princ, NULL, "root", NULL);
    } else {
	struct passwd *pw = FUNC3(uid);
	if(pw != NULL)
	    user = pw->pw_name;
	else {
	    user = FUNC1();
	    if(user == NULL)
		user = FUNC2();
	}
	if(user == NULL) {
	    FUNC6(context, ENOTTY,
				   FUNC0("unable to figure out current "
				      "principal", ""));
	    return ENOTTY; /* XXX */
	}
	ret = FUNC5(context, princ, NULL, user, NULL);
    }
    return ret;
}