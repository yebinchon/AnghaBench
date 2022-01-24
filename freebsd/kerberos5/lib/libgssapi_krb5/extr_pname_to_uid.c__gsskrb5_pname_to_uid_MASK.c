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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;
typedef  int /*<<< orphan*/  lname ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  MAXLOGNAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,struct passwd*,char*,size_t,struct passwd**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC4 (size_t) ; 

OM_uint32
FUNC5(OM_uint32 *minor_status, const gss_name_t pname,
    const gss_OID mech, uid_t *uidp)
{
	krb5_context context;
	krb5_const_principal name = (krb5_const_principal) pname;
	krb5_error_code kret;
	char lname[MAXLOGNAME + 1], buf[1024], *bufp;
	struct passwd pwd, *pw;
	size_t buflen;
	int error;
	OM_uint32 ret;
	static size_t buflen_hint = 1024;

	FUNC0 (&context);

	kret = FUNC3(context, name, sizeof(lname), lname);
	if (kret) {
		*minor_status = kret;
		return (GSS_S_FAILURE);
	}

	*minor_status = 0;
	buflen = buflen_hint;
	for (;;) {
		pw = NULL;
		bufp = buf;
		if (buflen > sizeof(buf))
			bufp = FUNC4(buflen);
		if (bufp == NULL)
			break;
		error = FUNC2(lname, &pwd, bufp, buflen, &pw);
		if (error != ERANGE)
			break;
		if (buflen > sizeof(buf))
			FUNC1(bufp);
		buflen += 1024;
		if (buflen > buflen_hint)
			buflen_hint = buflen;
	}
	if (pw) {
		*uidp = pw->pw_uid;
		ret = GSS_S_COMPLETE;
	} else {
		ret = GSS_S_FAILURE;
	}
	if (bufp != NULL && buflen > sizeof(buf))
		FUNC1(bufp);
	return (ret);
}