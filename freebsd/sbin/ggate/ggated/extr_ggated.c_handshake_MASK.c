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
typedef  int /*<<< orphan*/  ver ;
struct sockaddr {int dummy; } ;
struct ggd_export {int dummy; } ;
struct ggd_connection {scalar_t__ c_mediasize; int /*<<< orphan*/  c_sectorsize; int /*<<< orphan*/  c_diskfd; scalar_t__ c_token; } ;
struct g_gate_version {scalar_t__ gv_version; scalar_t__ gs_mediasize; scalar_t__ gs_error; int /*<<< orphan*/  gs_sectorsize; scalar_t__ gv_error; int /*<<< orphan*/  gv_magic; } ;
struct g_gate_sinit {scalar_t__ gv_version; scalar_t__ gs_mediasize; scalar_t__ gs_error; int /*<<< orphan*/  gs_sectorsize; scalar_t__ gv_error; int /*<<< orphan*/  gv_magic; } ;
struct g_gate_cinit {scalar_t__ gv_version; scalar_t__ gs_mediasize; scalar_t__ gs_error; int /*<<< orphan*/  gs_sectorsize; scalar_t__ gv_error; int /*<<< orphan*/  gv_magic; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sinit ;
typedef  int /*<<< orphan*/  cinit ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GGATE_MAGIC ; 
 scalar_t__ GGATE_VERSION ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int FUNC0 (struct ggd_connection*,struct g_gate_version*,struct sockaddr*,int) ; 
 struct ggd_connection* FUNC1 (struct g_gate_version*) ; 
 int /*<<< orphan*/  FUNC2 (struct ggd_connection*) ; 
 struct ggd_connection* FUNC3 (struct g_gate_version*,struct sockaddr*,int) ; 
 scalar_t__ FUNC4 (struct ggd_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct ggd_connection*) ; 
 int /*<<< orphan*/  errno ; 
 struct ggd_export* FUNC6 (struct sockaddr*,struct g_gate_version*,struct ggd_connection*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,struct g_gate_version*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int,struct g_gate_version*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct g_gate_version*) ; 
 int /*<<< orphan*/  FUNC13 (struct g_gate_version*) ; 
 int /*<<< orphan*/  FUNC14 (struct g_gate_version*) ; 
 int /*<<< orphan*/  FUNC15 (struct g_gate_version*) ; 
 int /*<<< orphan*/  FUNC16 (struct g_gate_version*) ; 
 int /*<<< orphan*/  FUNC17 (struct sockaddr*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(struct sockaddr *from, int sfd)
{
	struct g_gate_version ver;
	struct g_gate_cinit cinit;
	struct g_gate_sinit sinit;
	struct ggd_connection *conn;
	struct ggd_export *ex;
	ssize_t data;

	FUNC17(from);
	/*
	 * Phase 1: Version verification.
	 */
	FUNC7(LOG_DEBUG, "Receiving version packet.");
	data = FUNC9(sfd, &ver, sizeof(ver), MSG_WAITALL);
	FUNC14(&ver);
	if (data != sizeof(ver)) {
		FUNC7(LOG_WARNING, "Malformed version packet.");
		return (0);
	}
	FUNC7(LOG_DEBUG, "Version packet received.");
	if (FUNC18(ver.gv_magic, GGATE_MAGIC, FUNC21(GGATE_MAGIC)) != 0) {
		FUNC7(LOG_WARNING, "Invalid magic field.");
		return (0);
	}
	if (ver.gv_version != GGATE_VERSION) {
		FUNC7(LOG_WARNING, "Version %u is not supported.",
		    ver.gv_version);
		return (0);
	}
	ver.gv_error = 0;
	FUNC16(&ver);
	data = FUNC11(sfd, &ver, sizeof(ver), 0);
	FUNC14(&ver);
	if (data == -1) {
		FUNC19(sfd, errno, "Error while sending version packet: %s.",
		    FUNC20(errno));
		return (0);
	}

	/*
	 * Phase 2: Request verification.
	 */
	FUNC7(LOG_DEBUG, "Receiving initial packet.");
	data = FUNC9(sfd, &cinit, sizeof(cinit), MSG_WAITALL);
	FUNC12(&cinit);
	if (data != sizeof(cinit)) {
		FUNC7(LOG_WARNING, "Malformed initial packet.");
		return (0);
	}
	FUNC7(LOG_DEBUG, "Initial packet received.");
	conn = FUNC1(&cinit);
	if (conn != NULL) {
		/*
		 * Connection should already exists.
		 */
		FUNC7(LOG_DEBUG, "Found existing connection (token=%lu).",
		    (unsigned long)conn->c_token);
		if (FUNC0(conn, &cinit, from, sfd) == -1) {
			FUNC5(conn);
			return (0);
		}
	} else {
		/*
		 * New connection, allocate space.
		 */
		conn = FUNC3(&cinit, from, sfd);
		if (conn == NULL) {
			FUNC19(sfd, ENOMEM,
			    "Cannot allocate new connection.");
			return (0);
		}
		FUNC7(LOG_DEBUG, "New connection created (token=%lu).",
		    (unsigned long)conn->c_token);
	}

	ex = FUNC6(from, &cinit, conn);
	if (ex == NULL) {
		FUNC19(sfd, errno, NULL);
		FUNC5(conn);
		return (0);
	}
	if (conn->c_mediasize == 0) {
		conn->c_mediasize = FUNC8(conn->c_diskfd);
		conn->c_sectorsize = FUNC10(conn->c_diskfd);
	}
	sinit.gs_mediasize = conn->c_mediasize;
	sinit.gs_sectorsize = conn->c_sectorsize;
	sinit.gs_error = 0;

	FUNC7(LOG_DEBUG, "Sending initial packet.");

	FUNC15(&sinit);
	data = FUNC11(sfd, &sinit, sizeof(sinit), 0);
	FUNC13(&sinit);
	if (data == -1) {
		FUNC19(sfd, errno, "Error while sending initial packet: %s.",
		    FUNC20(errno));
		return (0);
	}

	if (FUNC4(conn)) {
		FUNC2(conn);
		FUNC5(conn);
	}
	return (1);
}