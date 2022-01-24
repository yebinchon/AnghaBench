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
struct comm_point {scalar_t__ type; scalar_t__ ssl_shake_state; int tcp_is_reading; scalar_t__ tcp_byte_count; scalar_t__ tcp_do_toggle_rw; int /*<<< orphan*/  buffer; scalar_t__ ssl; scalar_t__ tcp_check_nb_connect; } ;

/* Variables and functions */
 scalar_t__ comm_http ; 
 int /*<<< orphan*/  FUNC0 (struct comm_point*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_point*) ; 
 scalar_t__ comm_ssl_shake_none ; 
 int FUNC2 (int,struct comm_point*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct comm_point*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC8 (struct comm_point*) ; 

__attribute__((used)) static int
FUNC9(int fd, struct comm_point* c)
{
	FUNC4(c->type == comm_http);
	FUNC4(fd != -1);

	/* check pending connect errors, if that fails, we wait for more,
	 * or we can continue to write contents */
	if(c->tcp_check_nb_connect) {
		int r = FUNC2(fd, c);
		if(r == 0) return 0;
		if(r == 1) return 1;
		c->tcp_check_nb_connect = 0;
	}
	/* if we are in ssl handshake, handle SSL handshake */
#ifdef HAVE_SSL
	if(c->ssl && c->ssl_shake_state != comm_ssl_shake_none) {
		if(!ssl_handshake(c))
			return 0;
		if(c->ssl_shake_state != comm_ssl_shake_none)
			return 1;
	}
#endif /* HAVE_SSL */
	if(c->tcp_is_reading)
		return 1;
	/* if we are writing, write more */
	if(c->ssl) {
		if(!FUNC8(c))
			return 0;
	} else {
		if(!FUNC3(fd, c))
			return 0;
	}

	/* we write a single buffer contents, that can contain
	 * the http request, and then flip to read the results */
	/* see if write is done */
	if(FUNC6(c->buffer) == 0) {
		FUNC5(c->buffer);
		if(c->tcp_do_toggle_rw)
			c->tcp_is_reading = 1;
		c->tcp_byte_count = 0;
		/* switch from listening(write) to listening(read) */
		FUNC1(c);
		FUNC0(c, -1, -1);
	}
	return 1;
}