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
typedef  int /*<<< orphan*/  ver ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int /*<<< orphan*/  gs_mediasize; int /*<<< orphan*/  gc_token; int /*<<< orphan*/  gc_path; int /*<<< orphan*/  gv_version; int /*<<< orphan*/  gv_magic; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct g_gate_version {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int /*<<< orphan*/  gs_mediasize; int /*<<< orphan*/  gc_token; int /*<<< orphan*/  gc_path; int /*<<< orphan*/  gv_version; int /*<<< orphan*/  gv_magic; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct g_gate_sinit {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int /*<<< orphan*/  gs_mediasize; int /*<<< orphan*/  gc_token; int /*<<< orphan*/  gc_path; int /*<<< orphan*/  gv_version; int /*<<< orphan*/  gv_magic; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct g_gate_cinit {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int /*<<< orphan*/  gs_mediasize; int /*<<< orphan*/  gc_token; int /*<<< orphan*/  gc_path; int /*<<< orphan*/  gv_version; int /*<<< orphan*/  gv_magic; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  sinit ;
typedef  int /*<<< orphan*/  serv ;
typedef  int /*<<< orphan*/  cinit ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  GGATE_MAGIC ; 
 int /*<<< orphan*/  GGATE_VERSION ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int,struct sockaddr_in*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,struct sockaddr_in*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mediasize ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  port ; 
 scalar_t__ sectorsize ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  token ; 

__attribute__((used)) static int
FUNC19(int dir)
{
	struct g_gate_version ver;
	struct g_gate_cinit cinit;
	struct g_gate_sinit sinit;
	struct sockaddr_in serv;
	int sfd;

	/*
	 * Do the network stuff.
	 */
	FUNC2(&serv, sizeof(serv));
	serv.sin_family = AF_INET;
	serv.sin_addr.s_addr = FUNC9(host);
	if (serv.sin_addr.s_addr == INADDR_NONE) {
		FUNC5(LOG_DEBUG, "Invalid IP/host name: %s.", host);
		return (-1);
	}
	serv.sin_port = FUNC14(port);
	sfd = FUNC15(AF_INET, SOCK_STREAM, 0);
	if (sfd == -1) {
		FUNC5(LOG_DEBUG, "Cannot open socket: %s.",
		    FUNC16(errno));
		return (-1);
	}

	FUNC8(sfd);

	if (FUNC4(sfd, (struct sockaddr *)&serv, sizeof(serv)) == -1) {
		FUNC5(LOG_DEBUG, "Cannot connect to server: %s.",
		    FUNC16(errno));
		FUNC3(sfd);
		return (-1);
	}

	FUNC5(LOG_INFO, "Connected to the server: %s:%d.", host, port);

	/*
	 * Create and send version packet.
	 */
	FUNC5(LOG_DEBUG, "Sending version packet.");
	FUNC0(FUNC18(GGATE_MAGIC) == sizeof(ver.gv_magic));
	FUNC1(GGATE_MAGIC, ver.gv_magic, sizeof(ver.gv_magic));
	ver.gv_version = GGATE_VERSION;
	ver.gv_error = 0;
	FUNC13(&ver);
	if (FUNC7(sfd, &ver, sizeof(ver), MSG_NOSIGNAL) == -1) {
		FUNC5(LOG_DEBUG, "Error while sending version packet: %s.",
		    FUNC16(errno));
		FUNC3(sfd);
		return (-1);
	}
	FUNC2(&ver, sizeof(ver));
	if (FUNC6(sfd, &ver, sizeof(ver), MSG_WAITALL) == -1) {
		FUNC5(LOG_DEBUG, "Error while receiving data: %s.",
		    FUNC16(errno));
		FUNC3(sfd);
		return (-1);
	}
	if (ver.gv_error != 0) {
		FUNC5(LOG_DEBUG, "Version verification problem: %s.",
		    FUNC16(errno));
		FUNC3(sfd);
		return (-1);
	}

	/*
	 * Create and send initial packet.
	 */
	FUNC5(LOG_DEBUG, "Sending initial packet.");
	if (FUNC17(cinit.gc_path, path, sizeof(cinit.gc_path)) >=
	    sizeof(cinit.gc_path)) {
		FUNC5(LOG_DEBUG, "Path name too long.");
		FUNC3(sfd);
		return (-1);
	}
	cinit.gc_flags = flags | dir;
	cinit.gc_token = token;
	cinit.gc_nconn = 2;
	FUNC12(&cinit);
	if (FUNC7(sfd, &cinit, sizeof(cinit), MSG_NOSIGNAL) == -1) {
	        FUNC5(LOG_DEBUG, "Error while sending initial packet: %s.",
		    FUNC16(errno));
		FUNC3(sfd);
		return (-1);
	}
	FUNC10(&cinit);

	/*
	 * Receiving initial packet from server.
	 */
	FUNC5(LOG_DEBUG, "Receiving initial packet.");
	if (FUNC6(sfd, &sinit, sizeof(sinit), MSG_WAITALL) == -1) {
		FUNC5(LOG_DEBUG, "Error while receiving data: %s.",
		    FUNC16(errno));
		FUNC3(sfd);
		return (-1);
	}
	FUNC11(&sinit);
	if (sinit.gs_error != 0) {
	        FUNC5(LOG_DEBUG, "Error from server: %s.",
		    FUNC16(sinit.gs_error));
		FUNC3(sfd);
		return (-1);
	}
	FUNC5(LOG_DEBUG, "Received initial packet.");

	mediasize = sinit.gs_mediasize;
	if (sectorsize == 0)
		sectorsize = sinit.gs_sectorsize;

	return (sfd);
}