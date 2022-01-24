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
struct sockaddr_ng {int sg_len; int /*<<< orphan*/  sg_data; int /*<<< orphan*/  sg_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;
struct TYPE_2__ {size_t arglen; int flags; int cmd; } ;
struct ng_mesg {TYPE_1__ header; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETGRAPH ; 
 int /*<<< orphan*/  INFTIM ; 
 int NGF_RESP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int NGM_HASREPLY ; 
 int NGSA_OVERHEAD ; 
 int NG_PATHSIZ ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_ng* const) ; 
 int _gNgDebugLevel ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC7 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,struct ng_mesg*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(int cs, const char *path,
	const struct ng_mesg *hdr, const void *args, size_t arglen)
{
	u_char sgbuf[NG_PATHSIZ + NGSA_OVERHEAD];
	struct sockaddr_ng *const sg = (struct sockaddr_ng *) sgbuf;
	u_char *buf = NULL;
	struct ng_mesg *msg;
	int errnosv = 0;
	int rtn = 0;

	/* Sanity check */
	if (args == NULL)
		arglen = 0;

	/* Get buffer */
	if ((buf = FUNC5(sizeof(*msg) + arglen)) == NULL) {
		errnosv = errno;
		if (_gNgDebugLevel >= 1)
			FUNC0("malloc");
		rtn = -1;
		goto done;
	}
	msg = (struct ng_mesg *) buf;

	/* Finalize message */
	*msg = *hdr;
	msg->header.arglen = arglen;
	FUNC6(msg->data, args, arglen);

	/* Prepare socket address */
	sg->sg_family = AF_NETGRAPH;
	/* XXX handle overflow */
	FUNC9(sg->sg_data, path, NG_PATHSIZ);
	sg->sg_len = FUNC10(sg->sg_data) + 1 + NGSA_OVERHEAD;

	/* Debugging */
	if (_gNgDebugLevel >= 2) {
		FUNC1("SENDING %s:",
		    (msg->header.flags & NGF_RESP) ? "RESPONSE" : "MESSAGE");
		FUNC3(sg);
		FUNC2(msg, sg->sg_data);
	}

	/* Send it */
	if (FUNC8(cs, msg, sizeof(*msg) + arglen,
		   0, (struct sockaddr *) sg, sg->sg_len) < 0) {
		errnosv = errno;
		if (_gNgDebugLevel >= 1)
			FUNC0("sendto(%s)", sg->sg_data);
		rtn = -1;
		goto done;
	}

	/* Wait for reply if there should be one. */
	if (msg->header.cmd & NGM_HASREPLY && !(msg->header.flags & NGF_RESP)) {
		struct pollfd rfds;
		int n;

		rfds.fd = cs;
		rfds.events = POLLIN;
		rfds.revents = 0;
		n = FUNC7(&rfds, 1, INFTIM);
		if (n == -1) {
			errnosv = errno;
			if (_gNgDebugLevel >= 1)
				FUNC0("poll");
			rtn = -1;
		}
	}

done:
	/* Done */
	FUNC4(buf);		/* OK if buf is NULL */
	errno = errnosv;
	return (rtn);
}