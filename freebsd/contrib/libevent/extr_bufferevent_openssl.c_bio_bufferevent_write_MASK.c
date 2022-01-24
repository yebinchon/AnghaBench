#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct evbuffer {int dummy; } ;
struct TYPE_2__ {size_t high; } ;
struct bufferevent {TYPE_1__ wm_write; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bufferevent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct evbuffer* FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,char const*,int) ; 
 size_t FUNC6 (struct evbuffer*) ; 

__attribute__((used)) static int
FUNC7(BIO *b, const char *in, int inlen)
{
	struct bufferevent *bufev = FUNC1(b);
	struct evbuffer *output;
	size_t outlen;

	FUNC0(b);

	if (!FUNC1(b))
		return -1;

	output = FUNC4(bufev);
	outlen = FUNC6(output);

	/* Copy only as much data onto the output buffer as can fit under the
	 * high-water mark. */
	if (bufev->wm_write.high && bufev->wm_write.high <= (outlen+inlen)) {
		if (bufev->wm_write.high <= outlen) {
			/* If no data can fit, we'll need to retry later. */
			FUNC2(b);
			return -1;
		}
		inlen = bufev->wm_write.high - outlen;
	}

	FUNC3(inlen > 0);
	FUNC5(output, in, inlen);
	return inlen;
}