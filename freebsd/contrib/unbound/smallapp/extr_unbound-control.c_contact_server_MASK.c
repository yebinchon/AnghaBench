#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usock ;
struct sockaddr_un {unsigned int sun_len; int /*<<< orphan*/  sun_path; void* sun_family; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* first; } ;
struct config_file {int /*<<< orphan*/  control_port; scalar_t__ do_ip4; TYPE_2__ control_ifs; } ;
typedef  scalar_t__ socklen_t ;
struct TYPE_3__ {char* str; } ;

/* Variables and functions */
 void* AF_LOCAL ; 
 int ECONNREFUSED ; 
 int IPPROTO_TCP ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int WSAECONNREFUSED ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (struct sockaddr_storage*,scalar_t__) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,scalar_t__) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct sockaddr_storage*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,struct sockaddr_storage*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (char const*,char) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 char const* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int) ; 
 char const* FUNC15 (int) ; 

__attribute__((used)) static int
FUNC16(const char* svr, struct config_file* cfg, int statuscmd)
{
	struct sockaddr_storage addr;
	socklen_t addrlen;
	int addrfamily = 0, proto = IPPROTO_TCP;
	int fd, useport = 1;
	/* use svr or the first config entry */
	if(!svr) {
		if(cfg->control_ifs.first) {
			svr = cfg->control_ifs.first->str;
		} else if(cfg->do_ip4) {
			svr = "127.0.0.1";
		} else {
			svr = "::1";
		}
		/* config 0 addr (everything), means ask localhost */
		if(FUNC12(svr, "0.0.0.0") == 0)
			svr = "127.0.0.1";
		else if(FUNC12(svr, "::0") == 0 ||
			FUNC12(svr, "0::0") == 0 ||
			FUNC12(svr, "0::") == 0 ||
			FUNC12(svr, "::") == 0)
			svr = "::1";
	}
	if(FUNC11(svr, '@')) {
		if(!FUNC4(svr, &addr, &addrlen))
			FUNC5("could not parse IP@port: %s", svr);
#ifdef HAVE_SYS_UN_H
	} else if(svr[0] == '/') {
		struct sockaddr_un* usock = (struct sockaddr_un *) &addr;
		usock->sun_family = AF_LOCAL;
#ifdef HAVE_STRUCT_SOCKADDR_UN_SUN_LEN
		usock->sun_len = (unsigned)sizeof(usock);
#endif
		(void)strlcpy(usock->sun_path, svr, sizeof(usock->sun_path));
		addrlen = (socklen_t)sizeof(struct sockaddr_un);
		addrfamily = AF_LOCAL;
		useport = 0;
		proto = 0;
#endif
	} else {
		if(!FUNC6(svr, cfg->control_port, &addr, &addrlen))
			FUNC5("could not parse IP: %s", svr);
	}

	if(addrfamily == 0)
		addrfamily = FUNC1(&addr, addrlen)?PF_INET6:PF_INET;
	fd = FUNC10(addrfamily, SOCK_STREAM, proto);
	if(fd == -1) {
#ifndef USE_WINSOCK
		FUNC5("socket: %s", FUNC13(errno));
#else
		fatal_exit("socket: %s", wsa_strerror(WSAGetLastError()));
#endif
	}
	if(FUNC2(fd, (struct sockaddr*)&addr, addrlen) < 0) {
#ifndef USE_WINSOCK
		int err = errno;
		if(!useport) FUNC7("connect: %s for %s", FUNC13(err), svr);
		else FUNC8("connect", FUNC13(err), &addr, addrlen);
		if(err == ECONNREFUSED && statuscmd) {
			FUNC9("unbound is stopped\n");
			FUNC3(3);
		}
#else
		int wsaerr = WSAGetLastError();
		if(!useport) log_err("connect: %s for %s", wsa_strerror(wsaerr), svr);
		else log_err_addr("connect", wsa_strerror(wsaerr), &addr, addrlen);
		if(wsaerr == WSAECONNREFUSED && statuscmd) {
			printf("unbound is stopped\n");
			exit(3);
		}
#endif
		FUNC3(1);
	}
	return fd;
}