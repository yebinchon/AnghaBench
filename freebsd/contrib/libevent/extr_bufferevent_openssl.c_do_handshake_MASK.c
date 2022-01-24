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
struct TYPE_5__ {int /*<<< orphan*/  enabled; int /*<<< orphan*/  ev_read; } ;
struct TYPE_4__ {TYPE_2__ bev; } ;
struct bufferevent_openssl {int state; int /*<<< orphan*/  ssl; TYPE_1__ bev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_CONNECTED ; 
 int /*<<< orphan*/  BEV_EVENT_READING ; 
#define  BUFFEREVENT_SSL_ACCEPTING 132 
#define  BUFFEREVENT_SSL_CONNECTING 131 
#define  BUFFEREVENT_SSL_OPEN 130 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SSL_ERROR_WANT_READ 129 
#define  SSL_ERROR_WANT_WRITE 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent_openssl*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent_openssl*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent_openssl*,int) ; 
 int FUNC11 (struct bufferevent_openssl*) ; 
 int FUNC12 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC13 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC14 (struct bufferevent_openssl*) ; 

__attribute__((used)) static int
FUNC15(struct bufferevent_openssl *bev_ssl)
{
	int r;

	switch (bev_ssl->state) {
	default:
	case BUFFEREVENT_SSL_OPEN:
		FUNC1(0);
		return -1;
	case BUFFEREVENT_SSL_CONNECTING:
	case BUFFEREVENT_SSL_ACCEPTING:
		FUNC0();
		r = FUNC2(bev_ssl->ssl);
		break;
	}
	FUNC7(bev_ssl);

	if (r==1) {
		int fd = FUNC8(&bev_ssl->bev.bev.ev_read);
		/* We're done! */
		bev_ssl->state = BUFFEREVENT_SSL_OPEN;
		FUNC10(bev_ssl, fd); /* XXXX handle failure */
		/* Call do_read and do_write as needed */
		FUNC4(&bev_ssl->bev.bev, bev_ssl->bev.bev.enabled);
		FUNC5(&bev_ssl->bev.bev,
		    BEV_EVENT_CONNECTED, 0);
		return 1;
	} else {
		int err = FUNC3(bev_ssl->ssl, r);
		FUNC9(err);
		switch (err) {
		case SSL_ERROR_WANT_WRITE:
			FUNC13(bev_ssl);
			return FUNC12(bev_ssl);
		case SSL_ERROR_WANT_READ:
			FUNC14(bev_ssl);
			return FUNC11(bev_ssl);
		default:
			FUNC6(bev_ssl, BEV_EVENT_READING, err, r);
			return -1;
		}
	}
}