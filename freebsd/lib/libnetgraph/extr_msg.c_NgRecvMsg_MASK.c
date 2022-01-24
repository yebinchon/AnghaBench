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
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_ng {int /*<<< orphan*/  sg_data; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sgbuf ;

/* Variables and functions */
 int NGF_RESP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int NGSA_OVERHEAD ; 
 int NG_PATHSIZ ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_ng* const) ; 
 int _gNgDebugLevel ; 
 int errno ; 
 int FUNC4 (int,struct ng_mesg*,size_t,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(int cs, struct ng_mesg *rep, size_t replen, char *path)
{
	u_char sgbuf[NG_PATHSIZ + NGSA_OVERHEAD];
	struct sockaddr_ng *const sg = (struct sockaddr_ng *) sgbuf;
	socklen_t sglen = sizeof(sgbuf);
	int len, errnosv;

	/* Read reply */
	len = FUNC4(cs, rep, replen, 0, (struct sockaddr *) sg, &sglen);
	if (len < 0) {
		errnosv = errno;
		if (_gNgDebugLevel >= 1)
			FUNC0("recvfrom");
		goto errout;
	}
	if (path != NULL)
		FUNC5(path, sg->sg_data, NG_PATHSIZ);

	/* Debugging */
	if (_gNgDebugLevel >= 2) {
		FUNC1("RECEIVED %s:",
		    (rep->header.flags & NGF_RESP) ? "RESPONSE" : "MESSAGE");
		FUNC3(sg);
		FUNC2(rep, sg->sg_data);
	}

	/* Done */
	return (len);

errout:
	errno = errnosv;
	return (-1);
}