#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct pollfd {scalar_t__ fd; int events; int revents; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;
typedef  scalar_t__ ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
struct TYPE_11__ {scalar_t__ socket; int in_fd; scalar_t__ out; int /*<<< orphan*/  in; int /*<<< orphan*/  client_ip; int /*<<< orphan*/  client_hn; } ;
struct TYPE_10__ {int /*<<< orphan*/  log; TYPE_2__ console; } ;
typedef  TYPE_1__ osm_opensm_t ;
typedef  TYPE_2__ osm_console_t ;
typedef  int nfds_t ;
struct TYPE_12__ {scalar_t__ on; int /*<<< orphan*/  (* loop_function ) (TYPE_1__*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct hostent* FUNC7 (char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 TYPE_6__ loop_command ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC14 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,scalar_t__) ; 

int FUNC18(osm_opensm_t * p_osm)
{
	struct pollfd pollfd[2];
	char *p_line;
	size_t len;
	ssize_t n;
	struct pollfd *fds;
	nfds_t nfds;
	osm_console_t *p_oct = &p_osm->console;

	pollfd[0].fd = p_oct->socket;
	pollfd[0].events = POLLIN;
	pollfd[0].revents = 0;

	pollfd[1].fd = p_oct->in_fd;
	pollfd[1].events = POLLIN;
	pollfd[1].revents = 0;

	fds = p_oct->socket < 0 ? &pollfd[1] : pollfd;
	nfds = p_oct->socket < 0 || pollfd[1].fd < 0 ? 1 : 2;

	if (loop_command.on && FUNC11() &&
	    loop_command.loop_function) {
		if (p_oct->out) {
			loop_command.loop_function(p_osm, p_oct->out);
			FUNC5(p_oct->out);
		} else {
			loop_command.on = 0;
		}
	}

	if (FUNC14(fds, nfds, 1000) <= 0)
		return 0;

#ifdef ENABLE_OSM_CONSOLE_LOOPBACK
	if (pollfd[0].revents & POLLIN) {
		int new_fd = 0;
		struct sockaddr_in sin;
		socklen_t len = sizeof(sin);
		struct hostent *hent;
		if ((new_fd = accept(p_oct->socket, (struct sockaddr *)&sin, &len)) < 0) {
			OSM_LOG(&p_osm->log, OSM_LOG_ERROR,
				"ERR 4B04: Failed to accept console socket: %s\n",
				strerror(errno));
			p_oct->in_fd = -1;
			return 0;
		}
		if (inet_ntop
		    (AF_INET, &sin.sin_addr, p_oct->client_ip,
		     sizeof(p_oct->client_ip)) == NULL) {
			snprintf(p_oct->client_ip, sizeof(p_oct->client_ip),
				 "STRING_UNKNOWN");
		}
		if ((hent = gethostbyaddr((const char *)&sin.sin_addr,
					  sizeof(struct in_addr),
					  AF_INET)) == NULL) {
			snprintf(p_oct->client_hn, sizeof(p_oct->client_hn),
				 "STRING_UNKNOWN");
		} else {
			snprintf(p_oct->client_hn, sizeof(p_oct->client_hn),
				 "%s", hent->h_name);
		}
		if (is_authorized(p_oct)) {
			cio_open(p_oct, new_fd, &p_osm->log);
		} else {
			OSM_LOG(&p_osm->log, OSM_LOG_ERROR,
				"ERR 4B05: Console connection denied: %s (%s)\n",
				p_oct->client_hn, p_oct->client_ip);
			close(new_fd);
		}
		return 0;
	}
#endif

	if (pollfd[1].revents & POLLIN) {
		p_line = NULL;
		/* Get input line */
		n = FUNC8(&p_line, &len, p_oct->in);
		if (n > 0) {
			/* Parse and act on input */
			FUNC13(p_line, p_osm);
			if (!loop_command.on) {
				FUNC12(p_oct->out);
			}
		} else
			FUNC2(p_oct, &p_osm->log);
		if (p_line)
			FUNC6(p_line);
		return 0;
	}
	/* input fd is closed (hanged up) */
	if (pollfd[1].revents & POLLHUP) {
#ifdef ENABLE_OSM_CONSOLE_LOOPBACK
		/* If we are using a socket, we close the current connection */
		if (p_oct->socket >= 0) {
			cio_close(p_oct, &p_osm->log);
			return 0;
		}
#endif
		/* If we use a local console, stdin is closed (most probable is pipe ended)
		 * so we close the local console */
		return -1;
	}

	return 0;
}