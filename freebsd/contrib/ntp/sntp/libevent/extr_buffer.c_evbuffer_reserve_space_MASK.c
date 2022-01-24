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
struct evbuffer_iovec {size_t iov_len; int /*<<< orphan*/  iov_base; } ;
struct evbuffer_chain {int dummy; } ;
struct evbuffer {scalar_t__ freeze_end; } ;
typedef  scalar_t__ ev_ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct evbuffer*,scalar_t__,int) ; 
 struct evbuffer_chain* FUNC6 (struct evbuffer*,scalar_t__) ; 
 int FUNC7 (struct evbuffer*,scalar_t__,struct evbuffer_iovec*,int,struct evbuffer_chain***,int /*<<< orphan*/ ) ; 

int
FUNC8(struct evbuffer *buf, ev_ssize_t size,
    struct evbuffer_iovec *vec, int n_vecs)
{
	struct evbuffer_chain *chain, **chainp;
	int n = -1;

	FUNC2(buf);
	if (buf->freeze_end)
		goto done;
	if (n_vecs < 1)
		goto done;
	if (n_vecs == 1) {
		if ((chain = FUNC6(buf, size)) == NULL)
			goto done;

		vec[0].iov_base = FUNC1(chain);
		vec[0].iov_len = (size_t) FUNC0(chain);
		FUNC4(size<0 || (size_t)vec[0].iov_len >= (size_t)size);
		n = 1;
	} else {
		if (FUNC5(buf, size, n_vecs)<0)
			goto done;
		n = FUNC7(buf, size, vec, n_vecs,
				&chainp, 0);
	}

done:
	FUNC3(buf);
	return n;

}