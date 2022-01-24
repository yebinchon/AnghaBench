#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_4__ {TYPE_2__ bev; } ;
struct bufferevent_openssl {int state; int /*<<< orphan*/  underlying; int /*<<< orphan*/  ssl; TYPE_1__ bev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_CONNECTED ; 
 int /*<<< orphan*/  BEV_EVENT_READING ; 
#define  BUFFEREVENT_SSL_ACCEPTING 132 
#define  BUFFEREVENT_SSL_CONNECTING 131 
#define  BUFFEREVENT_SSL_OPEN 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SSL_ERROR_WANT_READ 129 
#define  SSL_ERROR_WANT_WRITE 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent_openssl*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent_openssl*,int) ; 
 int FUNC9 (struct bufferevent_openssl*) ; 
 int FUNC10 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC12 (struct bufferevent_openssl*) ; 

__attribute__((used)) static int
FUNC13(struct bufferevent_openssl *bev_ssl)
{
	int r;

	switch (bev_ssl->state) {
	default:
	case BUFFEREVENT_SSL_OPEN:
		FUNC0(0);
		return -1;
	case BUFFEREVENT_SSL_CONNECTING:
	case BUFFEREVENT_SSL_ACCEPTING:
		r = FUNC1(bev_ssl->ssl);
		break;
	}
	FUNC6(bev_ssl);

	if (r==1) {
		/* We're done! */
		bev_ssl->state = BUFFEREVENT_SSL_OPEN;
		FUNC8(bev_ssl, -1); /* XXXX handle failure */
		/* Call do_read and do_write as needed */
		FUNC3(&bev_ssl->bev.bev, bev_ssl->bev.bev.enabled);
		FUNC4(&bev_ssl->bev.bev,
		    BEV_EVENT_CONNECTED, 0);
		return 1;
	} else {
		int err = FUNC2(bev_ssl->ssl, r);
		FUNC7(err);
		switch (err) {
		case SSL_ERROR_WANT_WRITE:
			if (!bev_ssl->underlying) {
				FUNC11(bev_ssl);
				return FUNC10(bev_ssl);
			}
			return 0;
		case SSL_ERROR_WANT_READ:
			if (!bev_ssl->underlying) {
				FUNC12(bev_ssl);
				return FUNC9(bev_ssl);
			}
			return 0;
		default:
			FUNC5(bev_ssl, BEV_EVENT_READING, err, r);
			return -1;
		}
	}
}