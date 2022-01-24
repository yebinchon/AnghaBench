#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* z_streamp ;
struct evbuffer_iovec {int iov_len; scalar_t__ iov_base; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef  enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;
struct TYPE_3__ {int avail_in; int avail_out; scalar_t__ next_out; scalar_t__ next_in; } ;

/* Variables and functions */
 int BEV_NEED_MORE ; 
 int BEV_OK ; 
 int Z_BUF_ERROR ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,struct evbuffer_iovec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int) ; 
 scalar_t__ FUNC3 (struct evbuffer*) ; 
 int FUNC4 (struct evbuffer*,int,int /*<<< orphan*/ *,struct evbuffer_iovec*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,int,struct evbuffer_iovec*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  infilter_calls ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum bufferevent_filter_result
FUNC8(struct evbuffer *src, struct evbuffer *dst,
    ev_ssize_t lim, enum bufferevent_flush_mode state, void *ctx)
{
	struct evbuffer_iovec v_in[1];
	struct evbuffer_iovec v_out[1];
	int nread, nwrite;
	int res, n;

	z_streamp p = ctx;

	do {
		/* let's do some decompression */
		n = FUNC4(src, -1, NULL, v_in, 1);
		if (n) {
			p->avail_in = v_in[0].iov_len;
			p->next_in = v_in[0].iov_base;
		} else {
			p->avail_in = 0;
			p->next_in = 0;
		}

		FUNC5(dst, 4096, v_out, 1);
		p->next_out = v_out[0].iov_base;
		p->avail_out = v_out[0].iov_len;

		/* we need to flush zlib if we got a flush */
		res = FUNC7(p, FUNC6(state));

		/* let's figure out how much was compressed */
		nread = v_in[0].iov_len - p->avail_in;
		nwrite = v_out[0].iov_len - p->avail_out;

		FUNC2(src, nread);
		v_out[0].iov_len = nwrite;
		FUNC1(dst, v_out, 1);

		if (res==Z_BUF_ERROR) {
			/* We're out of space, or out of decodeable input.
			   Only if nwrite == 0 assume the latter.
			 */
			if (nwrite == 0)
				return BEV_NEED_MORE;
		} else {
			FUNC0(res == Z_OK || res == Z_STREAM_END);
		}

	} while (FUNC3(src) > 0);

	++infilter_calls;

	return (BEV_OK);
}