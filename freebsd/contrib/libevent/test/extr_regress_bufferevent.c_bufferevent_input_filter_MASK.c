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
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef  enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;

/* Variables and functions */
 int BEV_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,unsigned int) ; 
 unsigned int FUNC3 (struct evbuffer*) ; 
 unsigned char* FUNC4 (struct evbuffer*,unsigned int) ; 

__attribute__((used)) static enum bufferevent_filter_result
FUNC5(struct evbuffer *src, struct evbuffer *dst,
    ev_ssize_t lim, enum bufferevent_flush_mode state, void *ctx)
{
	const unsigned char *buffer;
	unsigned i;

	buffer = FUNC4(src, FUNC3(src));
	for (i = 0; i < FUNC3(src); i += 2) {
		if (buffer[i] == '-')
			continue;

		FUNC0(buffer[i] == 'x');
		FUNC1(dst, buffer + i + 1, 1);
	}

	FUNC2(src, i);
	return (BEV_OK);
}