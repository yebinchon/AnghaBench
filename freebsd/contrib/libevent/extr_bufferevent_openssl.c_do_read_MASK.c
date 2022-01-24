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
struct evbuffer_iovec {int iov_len; int /*<<< orphan*/  iov_base; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {struct evbuffer* input; } ;
struct TYPE_2__ {scalar_t__ read_suspended; struct bufferevent bev; } ;
struct bufferevent_openssl {scalar_t__ underlying; scalar_t__ read_blocked_on_write; int /*<<< orphan*/  ssl; TYPE_1__ bev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_READING ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int OP_BLOCKED ; 
 int OP_ERR ; 
 int OP_MADE_PROGRESS ; 
#define  SSL_ERROR_WANT_READ 129 
#define  SSL_ERROR_WANT_WRITE 128 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent_openssl*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC8 (struct evbuffer*,struct evbuffer_iovec*,int) ; 
 int FUNC9 (struct evbuffer*,int,struct evbuffer_iovec*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent_openssl*) ; 

__attribute__((used)) static int
FUNC12(struct bufferevent_openssl *bev_ssl, int n_to_read) {
	/* Requires lock */
	struct bufferevent *bev = &bev_ssl->bev.bev;
	struct evbuffer *input = bev->input;
	int r, n, i, n_used = 0, atmost;
	struct evbuffer_iovec space[2];
	int result = 0;

	if (bev_ssl->bev.read_suspended)
		return 0;

	atmost = FUNC4(&bev_ssl->bev);
	if (n_to_read > atmost)
		n_to_read = atmost;

	n = FUNC9(input, n_to_read, space, 2);
	if (n < 0)
		return OP_ERR;

	for (i=0; i<n; ++i) {
		if (bev_ssl->bev.read_suspended)
			break;
		FUNC1();
		r = FUNC3(bev_ssl->ssl, space[i].iov_base, space[i].iov_len);
		if (r>0) {
			result |= OP_MADE_PROGRESS;
			if (bev_ssl->read_blocked_on_write)
				if (FUNC5(bev_ssl) < 0)
					return OP_ERR | result;
			++n_used;
			space[i].iov_len = r;
			FUNC7(bev_ssl);
		} else {
			int err = FUNC2(bev_ssl->ssl, r);
			FUNC10(err);
			switch (err) {
			case SSL_ERROR_WANT_READ:
				/* Can't read until underlying has more data. */
				if (bev_ssl->read_blocked_on_write)
					if (FUNC5(bev_ssl) < 0)
						return OP_ERR | result;
				break;
			case SSL_ERROR_WANT_WRITE:
				/* This read operation requires a write, and the
				 * underlying is full */
				if (!bev_ssl->read_blocked_on_write)
					if (FUNC11(bev_ssl) < 0)
						return OP_ERR | result;
				break;
			default:
				FUNC6(bev_ssl, BEV_EVENT_READING, err, r);
				break;
			}
			result |= OP_BLOCKED;
			break; /* out of the loop */
		}
	}

	if (n_used) {
		FUNC8(input, space, n_used);
		if (bev_ssl->underlying)
			FUNC0(bev);
	}

	return result;
}