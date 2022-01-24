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
struct event_overlapped {int /*<<< orphan*/  overlapped; } ;
struct evbuffer_overlapped {int read_in_progress; int n_buffers; int /*<<< orphan*/ * buffers; int /*<<< orphan*/  fd; struct evbuffer_chain* first_pinned; int /*<<< orphan*/  write_in_progress; } ;
struct evbuffer_iovec {int dummy; } ;
struct evbuffer_chain {struct evbuffer_chain* next; } ;
struct evbuffer {scalar_t__ freeze_end; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  EVBUFFER_MEM_PINNED_R ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MAX_WSABUFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct evbuffer_iovec*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int WSA_IO_PENDING ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer_chain*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct evbuffer*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct evbuffer*) ; 
 int FUNC11 (struct evbuffer*,size_t,struct evbuffer_iovec*,int,struct evbuffer_chain***,int) ; 
 int /*<<< orphan*/  FUNC12 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct evbuffer_overlapped*,int /*<<< orphan*/ ) ; 
 struct evbuffer_overlapped* FUNC15 (struct evbuffer*) ; 

int
FUNC16(struct evbuffer *buf, size_t at_most,
		struct event_overlapped *ol)
{
	struct evbuffer_overlapped *buf_o = FUNC15(buf);
	int r = -1, i;
	int nvecs;
	int npin=0;
	struct evbuffer_chain *chain=NULL, **chainp;
	DWORD bytesRead;
	DWORD flags = 0;
	struct evbuffer_iovec vecs[MAX_WSABUFS];

	if (!buf_o)
		return -1;
	FUNC0(buf);
	FUNC2(!buf_o->write_in_progress);
	if (buf->freeze_end || buf_o->read_in_progress)
		goto done;

	buf_o->first_pinned = NULL;
	buf_o->n_buffers = 0;
	FUNC13(buf_o->buffers, 0, sizeof(buf_o->buffers));

	if (FUNC7(buf, at_most, MAX_WSABUFS) == -1)
		goto done;
	FUNC9(buf, 0);

	nvecs = FUNC11(buf, at_most,
	    vecs, MAX_WSABUFS, &chainp, 1);
	for (i=0;i<nvecs;++i) {
		FUNC3(
			&buf_o->buffers[i],
			&vecs[i]);
	}

	buf_o->n_buffers = nvecs;
	buf_o->first_pinned = chain = *chainp;

	npin=0;
	for ( ; chain; chain = chain->next) {
		FUNC6(chain, EVBUFFER_MEM_PINNED_R);
		++npin;
	}
	FUNC2(npin == nvecs);

	FUNC10(buf);
	if (FUNC5(buf_o->fd, buf_o->buffers, nvecs, &bytesRead, &flags,
		    &ol->overlapped, NULL)) {
		int error = FUNC4();
		if (error != WSA_IO_PENDING) {
			/* An actual error. */
			FUNC14(buf_o, EVBUFFER_MEM_PINNED_R);
			FUNC12(buf, 0);
			FUNC8(buf); /* decref */
			goto done;
		}
	}

	buf_o->read_in_progress = 1;
	r = 0;
done:
	FUNC1(buf);
	return r;
}