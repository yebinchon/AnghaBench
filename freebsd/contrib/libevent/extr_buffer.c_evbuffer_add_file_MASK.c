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
struct evbuffer_file_segment {int dummy; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_off_t ;

/* Variables and functions */
 unsigned int EVBUF_FS_CLOSE_ON_FREE ; 
 int FUNC0 (struct evbuffer*,struct evbuffer_file_segment*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer_file_segment*) ; 
 struct evbuffer_file_segment* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int
FUNC3(struct evbuffer *buf, int fd, ev_off_t offset, ev_off_t length)
{
	struct evbuffer_file_segment *seg;
	unsigned flags = EVBUF_FS_CLOSE_ON_FREE;
	int r;

	seg = FUNC2(fd, offset, length, flags);
	if (!seg)
		return -1;
	r = FUNC0(buf, seg, 0, length);
	if (r == 0)
		FUNC1(seg);
	return r;
}