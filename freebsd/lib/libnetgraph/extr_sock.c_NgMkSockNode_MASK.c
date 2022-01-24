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
typedef  char* u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_ng {char* sg_data; int sg_len; void* sg_family; } ;
struct sockaddr {int dummy; } ;
struct nodeinfo {scalar_t__ id; } ;
struct ng_mesg {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  namebuf ;

/* Variables and functions */
 void* AF_NETGRAPH ; 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  NGM_NODEINFO ; 
 int NGSA_OVERHEAD ; 
 int /*<<< orphan*/  NG_CONTROL ; 
 int /*<<< orphan*/  NG_DATA ; 
 int NG_NODESIZ ; 
 char* NG_SOCKET_KLD ; 
 scalar_t__ FUNC1 (int,struct ng_mesg*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int _gNgDebugLevel ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int) ; 
 int errno ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int FUNC10 (char*) ; 

int
FUNC11(const char *name, int *csp, int *dsp)
{
	char namebuf[NG_NODESIZ];
	int cs = -1;		/* control socket */
	int ds = -1;		/* data socket */
	int errnosv;

	/* Empty name means no name */
	if (name && *name == 0)
		name = NULL;

	/* Create control socket; this also creates the netgraph node.
	   If we get an EAFNOSUPPORT then the socket node type is
	   not loaded, so load it and try again. */
	if ((cs = FUNC8(AF_NETGRAPH, SOCK_DGRAM, NG_CONTROL)) < 0) {
		if (errno == EAFNOSUPPORT) {
			if (FUNC6(NG_SOCKET_KLD) < 0) {
				errnosv = errno;
				if (_gNgDebugLevel >= 1)
					FUNC0("can't load %s", NG_SOCKET_KLD);
				goto errout;
			}
			cs = FUNC8(AF_NETGRAPH, SOCK_DGRAM, NG_CONTROL);
			if (cs >= 0)
				goto gotNode;
		}
		errnosv = errno;
		if (_gNgDebugLevel >= 1)
			FUNC0("socket");
		goto errout;
	}

gotNode:
	/* Assign the node the desired name, if any */
	if (name != NULL) {
		u_char sbuf[NG_NODESIZ + NGSA_OVERHEAD];
		struct sockaddr_ng *const sg = (struct sockaddr_ng *) sbuf;

		/* Assign name */
		FUNC9(sg->sg_data, name, NG_NODESIZ);
		sg->sg_family = AF_NETGRAPH;
		sg->sg_len = FUNC10(sg->sg_data) + 1 + NGSA_OVERHEAD;
		if (FUNC3(cs, (struct sockaddr *) sg, sg->sg_len) < 0) {
			errnosv = errno;
			if (_gNgDebugLevel >= 1)
				FUNC0("bind(%s)", sg->sg_data);
			goto errout;
		}

		/* Save node name */
		FUNC9(namebuf, name, sizeof(namebuf));
	} else if (dsp != NULL) {
		union {
			u_char rbuf[sizeof(struct ng_mesg) +
			    sizeof(struct nodeinfo)];
			struct ng_mesg res;
		} res;
		struct nodeinfo *const ni = (struct nodeinfo *) res.res.data;

		/* Find out the node ID */
		if (FUNC2(cs, ".", NGM_GENERIC_COOKIE,
		    NGM_NODEINFO, NULL, 0) < 0) {
			errnosv = errno;
			if (_gNgDebugLevel >= 1)
				FUNC0("send nodeinfo");
			goto errout;
		}
		if (FUNC1(cs, &res.res, sizeof(res.rbuf), NULL) < 0) {
			errnosv = errno;
			if (_gNgDebugLevel >= 1)
				FUNC0("recv nodeinfo");
			goto errout;
		}

		/* Save node "name" */
		FUNC7(namebuf, sizeof(namebuf), "[%lx]", (u_long) ni->id);
	}

	/* Create data socket if desired */
	if (dsp != NULL) {
		u_char sbuf[NG_NODESIZ + 1 + NGSA_OVERHEAD];
		struct sockaddr_ng *const sg = (struct sockaddr_ng *) sbuf;

		/* Create data socket, initially just "floating" */
		if ((ds = FUNC8(AF_NETGRAPH, SOCK_DGRAM, NG_DATA)) < 0) {
			errnosv = errno;
			if (_gNgDebugLevel >= 1)
				FUNC0("socket");
			goto errout;
		}

		/* Associate the data socket with the node */
		FUNC7(sg->sg_data, NG_NODESIZ + 1, "%s:", namebuf);
		sg->sg_family = AF_NETGRAPH;
		sg->sg_len = FUNC10(sg->sg_data) + 1 + NGSA_OVERHEAD;
		if (FUNC5(ds, (struct sockaddr *) sg, sg->sg_len) < 0) {
			errnosv = errno;
			if (_gNgDebugLevel >= 1)
				FUNC0("connect(%s)", sg->sg_data);
			goto errout;
		}
	}

	/* Return the socket(s) */
	if (csp)
		*csp = cs;
	else
		FUNC4(cs);
	if (dsp)
		*dsp = ds;
	return (0);

errout:
	/* Failed */
	if (cs >= 0)
		FUNC4(cs);
	if (ds >= 0)
		FUNC4(ds);
	errno = errnosv;
	return (-1);
}