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
struct listen_port {int fd; struct listen_port* next; } ;
struct config_file {int /*<<< orphan*/  use_systemd; int /*<<< orphan*/  ip_freebind; int /*<<< orphan*/  ip_transparent; scalar_t__* username; } ;
struct addrinfo {int ai_flags; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int AI_NUMERICHOST ; 
 int AI_PASSIVE ; 
 int EAI_NONAME ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ cfg_gid ; 
 scalar_t__ cfg_uid ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct addrinfo*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,char const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC16(const char* ip, int nr, struct listen_port** list, int noproto_is_err,
	struct config_file* cfg)
{
	struct addrinfo hints;
	struct addrinfo* res;
	struct listen_port* n;
	int noproto = 0;
	int fd, r;
	char port[15];
	FUNC13(port, sizeof(port), "%d", nr);
	port[sizeof(port)-1]=0;
	FUNC12(&hints, 0, sizeof(hints));
	FUNC10(ip);

	if(ip[0] == '/') {
		/* This looks like a local socket */
		fd = FUNC5(ip, &noproto, cfg->use_systemd);
		/*
		 * Change socket ownership and permissions so users other
		 * than root can access it provided they are in the same
		 * group as the user we run as.
		 */
		if(fd != -1) {
#ifdef HAVE_CHOWN
			if (cfg->username && cfg->username[0] &&
				cfg_uid != (uid_t)-1) {
				if(chown(ip, cfg_uid, cfg_gid) == -1)
					verbose(VERB_QUERY, "cannot chown %u.%u %s: %s",
					  (unsigned)cfg_uid, (unsigned)cfg_gid,
					  ip, strerror(errno));
			}
			chmod(ip, (mode_t)(S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP));
#else
			(void)cfg;
#endif
		}
	} else {
		hints.ai_socktype = SOCK_STREAM;
		hints.ai_flags = AI_PASSIVE | AI_NUMERICHOST;
		if((r = FUNC9(ip, port, &hints, &res)) != 0 || !res) {
#ifdef USE_WINSOCK
			if(!noproto_is_err && r == EAI_NONAME) {
				/* tried to lookup the address as name */
				return 1; /* return success, but do nothing */
			}
#endif /* USE_WINSOCK */
			FUNC11("control interface %s:%s getaddrinfo: %s %s",
				ip?ip:"default", port, FUNC8(r),
#ifdef EAI_SYSTEM
				r==EAI_SYSTEM?(char*)strerror(errno):""
#else
				""
#endif
			);
			return 0;
		}

		/* open fd */
		fd = FUNC6(res, 1, &noproto, 0,
			cfg->ip_transparent, 0, cfg->ip_freebind, cfg->use_systemd);
		FUNC7(res);
	}

	if(fd == -1 && noproto) {
		if(!noproto_is_err)
			return 1; /* return success, but do nothing */
		FUNC11("cannot open control interface %s %d : "
			"protocol not supported", ip, nr);
		return 0;
	}
	if(fd == -1) {
		FUNC11("cannot open control interface %s %d", ip, nr);
		return 0;
	}

	/* alloc */
	n = (struct listen_port*)FUNC0(1, sizeof(*n));
	if(!n) {
#ifndef USE_WINSOCK
		FUNC3(fd);
#else
		closesocket(fd);
#endif
		FUNC11("out of memory");
		return 0;
	}
	n->next = *list;
	*list = n;
	n->fd = fd;
	return 1;
}