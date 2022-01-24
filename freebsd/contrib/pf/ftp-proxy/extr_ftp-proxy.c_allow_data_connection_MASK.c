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
struct sockaddr {int dummy; } ;
struct session {scalar_t__ cmd; int /*<<< orphan*/  id; int /*<<< orphan*/  port; int /*<<< orphan*/  proxy_port; int /*<<< orphan*/  server_ss; int /*<<< orphan*/  orig_server_ss; int /*<<< orphan*/  proxy_ss; int /*<<< orphan*/  client_ss; } ;

/* Variables and functions */
 scalar_t__ CMD_EPRT ; 
 scalar_t__ CMD_EPSV ; 
 scalar_t__ CMD_NONE ; 
 scalar_t__ CMD_PASV ; 
 scalar_t__ CMD_PORT ; 
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  MIN_PORT ; 
 int /*<<< orphan*/  PF_IN ; 
 int PF_NAT_PROXY_PORT_HIGH ; 
 int PF_NAT_PROXY_PORT_LOW ; 
 int /*<<< orphan*/  PF_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ,struct sockaddr*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ errno ; 
 scalar_t__ fixed_server ; 
 int /*<<< orphan*/  linebuf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ rfc_mode ; 
 struct sockaddr* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int
FUNC13(struct session *s)
{
	struct sockaddr *client_sa, *orig_sa, *proxy_sa, *server_sa;
	int prepared = 0;

	/*
	 * The pf rules below do quite some NAT rewriting, to keep up
	 * appearances.  Points to keep in mind:
	 * 1)  The client must think it's talking to the real server,
	 *     for both control and data connections.  Transparently.
	 * 2)  The server must think that the proxy is the client.
	 * 3)  Source and destination ports are rewritten to minimize
	 *     port collisions, to aid security (some systems pick weak
	 *     ports) or to satisfy RFC requirements (source port 20).
	 */
	
	/* Cast this once, to make code below it more readable. */
	client_sa = FUNC10(&s->client_ss);
	server_sa = FUNC10(&s->server_ss);
	proxy_sa = FUNC10(&s->proxy_ss);
	if (fixed_server)
		/* Fixed server: data connections must appear to come
		   from / go to the original server, not the fixed one. */
		orig_sa = FUNC10(&s->orig_server_ss);
	else
		/* Server not fixed: orig_server == server. */
		orig_sa = FUNC10(&s->server_ss);

	/* Passive modes. */
	if (s->cmd == CMD_PASV || s->cmd == CMD_EPSV) {
		s->port = FUNC6(s->cmd);
		if (s->port < MIN_PORT) {
			FUNC5(LOG_CRIT, "#%d bad port in '%s'", s->id,
			    linebuf);
			return (0);
		}
		s->proxy_port = FUNC7();
		FUNC5(LOG_INFO, "#%d passive: client to server port %d"
		    " via port %d", s->id, s->port, s->proxy_port);

		if (FUNC8(s->id) == -1)
			goto fail;
		prepared = 1;

		FUNC9(s->cmd, orig_sa, s->proxy_port);
		FUNC5(LOG_DEBUG, "#%d proxy: %s", s->id, linebuf);

		/* rdr from $client to $orig_server port $proxy_port -> $server
		    port $port */
		if (FUNC2(s->id, client_sa, orig_sa, s->proxy_port,
		    server_sa, s->port) == -1)
			goto fail;

		/* nat from $client to $server port $port -> $proxy */
		if (FUNC1(s->id, client_sa, server_sa, s->port, proxy_sa,
		    PF_NAT_PROXY_PORT_LOW, PF_NAT_PROXY_PORT_HIGH) == -1)
			goto fail;

		/* pass in from $client to $server port $port */
		if (FUNC0(s->id, PF_IN, client_sa, server_sa,
		    s->port) == -1)
			goto fail;

		/* pass out from $proxy to $server port $port */
		if (FUNC0(s->id, PF_OUT, proxy_sa, server_sa,
		    s->port) == -1)
			goto fail;
	}

	/* Active modes. */
	if (s->cmd == CMD_PORT || s->cmd == CMD_EPRT) {
		FUNC5(LOG_INFO, "#%d active: server to client port %d"
		    " via port %d", s->id, s->port, s->proxy_port);

		if (FUNC8(s->id) == -1)
			goto fail;
		prepared = 1;

		/* rdr from $server to $proxy port $proxy_port -> $client port
		    $port */
		if (FUNC2(s->id, server_sa, proxy_sa, s->proxy_port,
		    client_sa, s->port) == -1)
			goto fail;

		/* nat from $server to $client port $port -> $orig_server port
		    $natport */
		if (rfc_mode && s->cmd == CMD_PORT) {
			/* Rewrite sourceport to RFC mandated 20. */
			if (FUNC1(s->id, server_sa, client_sa, s->port,
			    orig_sa, 20, 20) == -1)
				goto fail;
		} else {
			/* Let pf pick a source port from the standard range. */
			if (FUNC1(s->id, server_sa, client_sa, s->port,
			    orig_sa, PF_NAT_PROXY_PORT_LOW,
			    PF_NAT_PROXY_PORT_HIGH) == -1)
			    	goto fail;
		}

		/* pass in from $server to $client port $port */
		if (FUNC0(s->id, PF_IN, server_sa, client_sa, s->port) ==
		    -1)
			goto fail;

		/* pass out from $orig_server to $client port $port */
		if (FUNC0(s->id, PF_OUT, orig_sa, client_sa, s->port) ==
		    -1)
			goto fail;
	}

	/* Commit rules if they were prepared. */
	if (prepared && (FUNC3() == -1)) {
		if (errno != EBUSY)
			goto fail;
		/* One more try if busy. */
		FUNC12(5000);
		if (FUNC3() == -1)
			goto fail;
	}

	s->cmd = CMD_NONE;
	s->port = 0;

	return (1);

 fail:
	FUNC5(LOG_CRIT, "#%d pf operation failed: %s", s->id, FUNC11(errno));
	if (prepared)
		FUNC4();
	return (0);
}