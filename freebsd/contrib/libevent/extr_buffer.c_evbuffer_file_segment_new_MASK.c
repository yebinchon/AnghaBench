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
struct stat {int st_size; } ;
struct evbuffer_file_segment {int refcnt; int fd; unsigned int flags; int file_offset; int length; int can_sendfile; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cleanup_cb_arg; int /*<<< orphan*/ * cleanup_cb; } ;
typedef  int ev_uint64_t ;
typedef  int ev_off_t ;

/* Variables and functions */
 int EVBUFFER_CHAIN_MAX ; 
 unsigned int EVBUF_FS_DISABLE_LOCKING ; 
 unsigned int EVBUF_FS_DISABLE_SENDFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct evbuffer_file_segment*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 struct evbuffer_file_segment* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer_file_segment*) ; 

struct evbuffer_file_segment *
FUNC5(
	int fd, ev_off_t offset, ev_off_t length, unsigned flags)
{
	struct evbuffer_file_segment *seg =
	    FUNC3(sizeof(struct evbuffer_file_segment), 1);
	if (!seg)
		return NULL;
	seg->refcnt = 1;
	seg->fd = fd;
	seg->flags = flags;
	seg->file_offset = offset;
	seg->cleanup_cb = NULL;
	seg->cleanup_cb_arg = NULL;
#ifdef _WIN32
#ifndef lseek
#define lseek _lseeki64
#endif
#ifndef fstat
#define fstat _fstat
#endif
#ifndef stat
#define stat _stat
#endif
#endif
	if (length == -1) {
		struct stat st;
		if (FUNC2(fd, &st) < 0)
			goto err;
		length = st.st_size;
	}
	seg->length = length;

	if (offset < 0 || length < 0 ||
	    ((ev_uint64_t)length > EVBUFFER_CHAIN_MAX) ||
	    (ev_uint64_t)offset > (ev_uint64_t)(EVBUFFER_CHAIN_MAX - length))
		goto err;

#if defined(USE_SENDFILE)
	if (!(flags & EVBUF_FS_DISABLE_SENDFILE)) {
		seg->can_sendfile = 1;
		goto done;
	}
#endif

	if (FUNC1(seg)<0)
		goto err;

#if defined(USE_SENDFILE)
done:
#endif
	if (!(flags & EVBUF_FS_DISABLE_LOCKING)) {
		FUNC0(seg->lock, 0);
	}
	return seg;
err:
	FUNC4(seg);
	return NULL;
}