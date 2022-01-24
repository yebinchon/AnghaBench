#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct event_overlapped {int /*<<< orphan*/  overlapped; } ;
struct evbuffer_overlapped {int write_in_progress; int n_buffers; TYPE_1__* buffers; int /*<<< orphan*/  fd; struct evbuffer_chain* first_pinned; int /*<<< orphan*/  read_in_progress; } ;
struct evbuffer_chain {size_t off; scalar_t__ misalign; scalar_t__ buffer; struct evbuffer_chain* next; } ;
struct evbuffer {size_t total_len; struct evbuffer_chain* first; scalar_t__ freeze_start; } ;
typedef  size_t ev_ssize_t ;
struct TYPE_4__ {char* buf; unsigned long len; } ;
typedef  TYPE_1__ WSABUF ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  EVBUFFER_MEM_PINNED_W ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MAX_WSABUFS ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int WSA_IO_PENDING ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct evbuffer_overlapped*,int /*<<< orphan*/ ) ; 
 struct evbuffer_overlapped* FUNC12 (struct evbuffer*) ; 

int
FUNC13(struct evbuffer *buf, ev_ssize_t at_most,
		struct event_overlapped *ol)
{
	struct evbuffer_overlapped *buf_o = FUNC12(buf);
	int r = -1;
	int i;
	struct evbuffer_chain *chain;
	DWORD bytesSent;

	if (!buf) {
		/* No buffer, or it isn't overlapped */
		return -1;
	}

	FUNC0(buf);
	FUNC2(!buf_o->read_in_progress);
	if (buf->freeze_start || buf_o->write_in_progress)
		goto done;
	if (!buf->total_len) {
		/* Nothing to write */
		r = 0;
		goto done;
	} else if (at_most < 0 || (size_t)at_most > buf->total_len) {
		at_most = buf->total_len;
	}
	FUNC7(buf, 1);

	buf_o->first_pinned = NULL;
	buf_o->n_buffers = 0;
	FUNC10(buf_o->buffers, 0, sizeof(buf_o->buffers));

	chain = buf_o->first_pinned = buf->first;

	for (i=0; i < MAX_WSABUFS && chain; ++i, chain=chain->next) {
		WSABUF *b = &buf_o->buffers[i];
		b->buf = (char*)( chain->buffer + chain->misalign );
		FUNC5(chain, EVBUFFER_MEM_PINNED_W);

		if ((size_t)at_most > chain->off) {
			/* XXXX Cast is safe for now, since win32 has no
			   mmaped chains.  But later, we need to have this
			   add more WSAbufs if chain->off is greater than
			   ULONG_MAX */
			b->len = (unsigned long)chain->off;
			at_most -= chain->off;
		} else {
			b->len = (unsigned long)at_most;
			++i;
			break;
		}
	}

	buf_o->n_buffers = i;
	FUNC8(buf);
	if (FUNC4(buf_o->fd, buf_o->buffers, i, &bytesSent, 0,
		&ol->overlapped, NULL)) {
		int error = FUNC3();
		if (error != WSA_IO_PENDING) {
			/* An actual error. */
			FUNC11(buf_o, EVBUFFER_MEM_PINNED_W);
			FUNC9(buf, 1);
			FUNC6(buf); /* decref */
			goto done;
		}
	}

	buf_o->write_in_progress = 1;
	r = 0;
done:
	FUNC1(buf);
	return r;
}