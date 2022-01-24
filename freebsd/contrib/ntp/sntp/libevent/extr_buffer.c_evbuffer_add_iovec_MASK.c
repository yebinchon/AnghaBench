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
struct evbuffer_iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 scalar_t__ FUNC2 (struct evbuffer*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct evbuffer*,size_t,int) ; 

size_t
FUNC4(struct evbuffer * buf, struct evbuffer_iovec * vec, int n_vec) {
	int n;
	size_t res;
	size_t to_alloc;

	FUNC0(buf);

	res = to_alloc = 0;

	for (n = 0; n < n_vec; n++) {
		to_alloc += vec[n].iov_len;
	}

	if (FUNC3(buf, to_alloc, 2) < 0) {
		goto done;
	}

	for (n = 0; n < n_vec; n++) {
		/* XXX each 'add' call here does a bunch of setup that's
		 * obviated by evbuffer_expand_fast_, and some cleanup that we
		 * would like to do only once.  Instead we should just extract
		 * the part of the code that's needed. */

		if (FUNC2(buf, vec[n].iov_base, vec[n].iov_len) < 0) {
			goto done;
		}

		res += vec[n].iov_len;
	}

done:
    FUNC1(buf);
    return res;
}