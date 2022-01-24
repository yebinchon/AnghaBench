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
struct TYPE_3__ {struct internal_event* c; } ;
struct internal_event {int fd; int tcp_do_toggle_rw; int tcp_check_nb_connect; int http_in_headers; int tcp_do_fastopen; struct internal_event* ev; scalar_t__ buffer; int /*<<< orphan*/  ssl; void* cb_arg; int /*<<< orphan*/ * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; int /*<<< orphan*/ * http_temp; scalar_t__ http_is_chunked; scalar_t__ http_in_chunk_headers; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int /*<<< orphan*/  type; int /*<<< orphan*/ * tcp_free; int /*<<< orphan*/ * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int /*<<< orphan*/ * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int /*<<< orphan*/ * timeout; struct comm_base* base; } ;
struct comm_point {int fd; int tcp_do_toggle_rw; int tcp_check_nb_connect; int http_in_headers; int tcp_do_fastopen; struct comm_point* ev; scalar_t__ buffer; int /*<<< orphan*/  ssl; void* cb_arg; int /*<<< orphan*/ * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; int /*<<< orphan*/ * http_temp; scalar_t__ http_is_chunked; scalar_t__ http_in_chunk_headers; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int /*<<< orphan*/  type; int /*<<< orphan*/ * tcp_free; int /*<<< orphan*/ * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int /*<<< orphan*/ * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int /*<<< orphan*/ * timeout; struct comm_base* base; } ;
struct comm_base {TYPE_2__* eb; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 short UB_EV_PERSIST ; 
 short UB_EV_WRITE ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  comm_http ; 
 int /*<<< orphan*/  comm_point_http_handle_callback ; 
 int /*<<< orphan*/  FUNC2 (struct internal_event*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (size_t) ; 
 struct internal_event* FUNC6 (int /*<<< orphan*/ ,int,short,int /*<<< orphan*/ ,struct internal_event*) ; 

struct comm_point* 
FUNC7(struct comm_base *base, size_t bufsize,
        comm_point_callback_type* callback, void* callback_arg,
	sldns_buffer* temp)
{
	struct comm_point* c = (struct comm_point*)FUNC1(1,
		sizeof(struct comm_point));
	short evbits;
	if(!c)
		return NULL;
	c->ev = (struct internal_event*)FUNC1(1,
		sizeof(struct internal_event));
	if(!c->ev) {
		FUNC2(c);
		return NULL;
	}
	c->ev->base = base;
	c->fd = -1;
	c->buffer = FUNC5(bufsize);
	if(!c->buffer) {
		FUNC2(c->ev);
		FUNC2(c);
		return NULL;
	}
	c->timeout = NULL;
	c->tcp_is_reading = 0;
	c->tcp_byte_count = 0;
	c->tcp_parent = NULL;
	c->max_tcp_count = 0;
	c->cur_tcp_count = 0;
	c->tcp_handlers = NULL;
	c->tcp_free = NULL;
	c->type = comm_http;
	c->tcp_do_close = 0;
	c->do_not_close = 0;
	c->tcp_do_toggle_rw = 1;
	c->tcp_check_nb_connect = 1;
	c->http_in_headers = 1;
	c->http_in_chunk_headers = 0;
	c->http_is_chunked = 0;
	c->http_temp = temp;
#ifdef USE_MSG_FASTOPEN
	c->tcp_do_fastopen = 1;
#endif
#ifdef USE_DNSCRYPT
	c->dnscrypt = 0;
	c->dnscrypt_buffer = c->buffer;
#endif
	c->repinfo.c = c;
	c->callback = callback;
	c->cb_arg = callback_arg;
	evbits = UB_EV_PERSIST | UB_EV_WRITE;
	c->ev->ev = FUNC6(base->eb->base, c->fd, evbits,
		comm_point_http_handle_callback, c);
	if(c->ev->ev == NULL)
	{
		FUNC3("could not baseset tcpout event");
#ifdef HAVE_SSL
		SSL_free(c->ssl);
#endif
		FUNC4(c->buffer);
		FUNC2(c->ev);
		FUNC2(c);
		return NULL;
	}

	return c;
}