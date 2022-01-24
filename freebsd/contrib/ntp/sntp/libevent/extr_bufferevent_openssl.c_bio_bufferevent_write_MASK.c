#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct evbuffer {int dummy; } ;
struct TYPE_6__ {size_t high; } ;
struct bufferevent {TYPE_1__ wm_write; } ;
struct TYPE_7__ {struct bufferevent* ptr; } ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct evbuffer* FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,char const*,int) ; 
 size_t FUNC5 (struct evbuffer*) ; 

__attribute__((used)) static int
FUNC6(BIO *b, const char *in, int inlen)
{
	struct bufferevent *bufev = b->ptr;
	struct evbuffer *output;
	size_t outlen;

	FUNC0(b);

	if (!b->ptr)
		return -1;

	output = FUNC3(bufev);
	outlen = FUNC5(output);

	/* Copy only as much data onto the output buffer as can fit under the
	 * high-water mark. */
	if (bufev->wm_write.high && bufev->wm_write.high <= (outlen+inlen)) {
		if (bufev->wm_write.high <= outlen) {
			/* If no data can fit, we'll need to retry later. */
			FUNC1(b);
			return -1;
		}
		inlen = bufev->wm_write.high - outlen;
	}

	FUNC2(inlen > 0);
	FUNC4(output, in, inlen);
	return inlen;
}