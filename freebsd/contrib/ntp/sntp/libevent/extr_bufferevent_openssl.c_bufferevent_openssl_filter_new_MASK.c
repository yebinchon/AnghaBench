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
struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bufferevent* FUNC2 (struct event_base*,struct bufferevent*,int,int /*<<< orphan*/ *,int,int) ; 

struct bufferevent *
FUNC3(struct event_base *base,
    struct bufferevent *underlying,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{
	/* We don't tell the BIO to close the bufferevent; we do it ourselves
	 * on be_openssl_destruct */
	int close_flag = 0; /* options & BEV_OPT_CLOSE_ON_FREE; */
	BIO *bio;
	if (!underlying)
		return NULL;
	if (!(bio = FUNC0(underlying, close_flag)))
		return NULL;

	FUNC1(ssl, bio, bio);

	return FUNC2(
		base, underlying, -1, ssl, state, options);
}