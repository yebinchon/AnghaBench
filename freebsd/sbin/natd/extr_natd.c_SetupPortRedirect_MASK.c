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
typedef  int u_short ;
struct in_addr {void* s_addr; } ;
struct alias_link {int dummy; } ;
typedef  int /*<<< orphan*/  port_range ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* INADDR_ANY ; 
 void* INADDR_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct alias_link*,struct in_addr,int /*<<< orphan*/ ) ; 
 struct alias_link* FUNC3 (int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct in_addr*) ; 
 scalar_t__ FUNC7 (char*,struct in_addr*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  mla ; 
 char* FUNC13 (char*,char) ; 
 char* FUNC14 (char const*) ; 
 char* FUNC15 (char*,char*) ; 

void FUNC16 (const char* parms)
{
	char		*buf;
	char*		ptr;
	char*		serverPool;
	struct in_addr	localAddr;
	struct in_addr	publicAddr;
	struct in_addr	remoteAddr;
	port_range      portRange;
	u_short         localPort      = 0;
	u_short         publicPort     = 0;
	u_short         remotePort     = 0;
	u_short         numLocalPorts  = 0;
	u_short         numPublicPorts = 0;
	u_short         numRemotePorts = 0;
	int		proto;
	char*		protoName;
	char*		separator;
	int             i;
	struct alias_link *aliaslink = NULL;

	buf = FUNC14 (parms);
	if (!buf)
		FUNC10 (1, "redirect_port: strdup() failed");
/*
 * Extract protocol.
 */
	protoName = FUNC15 (buf, " \t");
	if (!protoName)
		FUNC10 (1, "redirect_port: missing protocol");

	proto = FUNC9 (protoName);
/*
 * Extract local address.
 */
	ptr = FUNC15 (NULL, " \t");
	if (!ptr)
		FUNC10 (1, "redirect_port: missing local address");

	separator = FUNC13(ptr, ',');
	if (separator) {		/* LSNAT redirection syntax. */
		localAddr.s_addr = INADDR_NONE;
		localPort = ~0;
		numLocalPorts = 1;
		serverPool = ptr;
	} else {
		if ( FUNC7 (ptr, &localAddr, protoName, &portRange) != 0 )
			FUNC10 (1, "redirect_port: invalid local port range");

		localPort     = FUNC0(portRange);
		numLocalPorts = FUNC1(portRange);
		serverPool = NULL;
	}

/*
 * Extract public port and optionally address.
 */
	ptr = FUNC15 (NULL, " \t");
	if (!ptr)
		FUNC10 (1, "redirect_port: missing public port");

	separator = FUNC13 (ptr, ':');
	if (separator) {
	        if (FUNC7 (ptr, &publicAddr, protoName, &portRange) != 0 )
		        FUNC10 (1, "redirect_port: invalid public port range");
	}
	else {
		publicAddr.s_addr = INADDR_ANY;
		if (FUNC8 (ptr, protoName, &portRange) != 0)
		        FUNC10 (1, "redirect_port: invalid public port range");
	}

	publicPort     = FUNC0(portRange);
	numPublicPorts = FUNC1(portRange);

/*
 * Extract remote address and optionally port.
 */
	ptr = FUNC15 (NULL, " \t");
	if (ptr) {
		separator = FUNC13 (ptr, ':');
		if (separator) {
		        if (FUNC7 (ptr, &remoteAddr, protoName, &portRange) != 0)
			        FUNC10 (1, "redirect_port: invalid remote port range");
		} else {
		        FUNC4(portRange, 0);
			FUNC5(portRange, 1);
			FUNC6 (ptr, &remoteAddr);
		}
	}
	else {
	        FUNC4(portRange, 0);
		FUNC5(portRange, 1);
		remoteAddr.s_addr = INADDR_ANY;
	}

	remotePort     = FUNC0(portRange);
	numRemotePorts = FUNC1(portRange);

/*
 * Make sure port ranges match up, then add the redirect ports.
 */
	if (numLocalPorts != numPublicPorts)
	        FUNC10 (1, "redirect_port: port ranges must be equal in size");

	/* Remote port range is allowed to be '0' which means all ports. */
	if (numRemotePorts != numLocalPorts && (numRemotePorts != 1 || remotePort != 0))
	        FUNC10 (1, "redirect_port: remote port must be 0 or equal to local port range in size");

	for (i = 0 ; i < numPublicPorts ; ++i) {
	        /* If remotePort is all ports, set it to 0. */
	        u_short remotePortCopy = remotePort + i;
	        if (numRemotePorts == 1 && remotePort == 0)
		        remotePortCopy = 0;

		aliaslink = FUNC3 (mla, localAddr,
						FUNC12(localPort + i),
						remoteAddr,
						FUNC12(remotePortCopy),
						publicAddr,
						FUNC12(publicPort + i),
						proto);
	}

/*
 * Setup LSNAT server pool.
 */
	if (serverPool != NULL && aliaslink != NULL) {
		ptr = FUNC15(serverPool, ",");
		while (ptr != NULL) {
			if (FUNC7(ptr, &localAddr, protoName, &portRange) != 0)
				FUNC10(1, "redirect_port: invalid local port range");

			localPort = FUNC0(portRange);
			if (FUNC1(portRange) != 1)
				FUNC10(1, "redirect_port: local port must be single in this context");
			FUNC2(mla, aliaslink, localAddr, FUNC12(localPort));
			ptr = FUNC15(NULL, ",");
		}
	}
	
	FUNC11 (buf);
}