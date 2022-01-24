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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct x_passwd {int dummy; } ;
struct yppasswd {char* oldpass; struct x_passwd newpw; } ;

/* Variables and functions */
 int IPPORT_RESERVED ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  YPPASSWDPROC_UPDATE ; 
 int /*<<< orphan*/  YPPASSWDPROG ; 
 int /*<<< orphan*/  YPPASSWDVERS ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xdr_int ; 
 scalar_t__ xdr_yppasswd ; 
 scalar_t__ FUNC3 (char**) ; 
 scalar_t__ FUNC4 (char*,char*,char**) ; 

int
FUNC5(char *oldpass, struct x_passwd *newpw)
{
	char *server;
	char *domain;
	int rval, result;
	struct yppasswd yppasswd;

	yppasswd.newpw = *newpw;
	yppasswd.oldpass = oldpass;

	if (FUNC3(&domain))
		return (-1);

	if (FUNC4(domain, "passwd.byname", &server))
		return(-1);

	rval = FUNC2(server, YPPASSWDPROG,
				YPPASSWDPROC_UPDATE, IPPROTO_UDP);

	if (rval == 0 || rval >= IPPORT_RESERVED) {
		FUNC1(server);
		return(-1);
	}

	rval = FUNC0(server, YPPASSWDPROG, YPPASSWDVERS, YPPASSWDPROC_UPDATE,
		       (xdrproc_t)xdr_yppasswd, (char *)&yppasswd,
		       (xdrproc_t)xdr_int, (char *)&result);

	FUNC1(server);
	if (rval || result)
		return(-1);
	else
		return(0);
}