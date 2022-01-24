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
union bufferevent_ctrl_data {TYPE_1__* ptr; void* fd; } ;
struct bufferevent_openssl {TYPE_1__* underlying; int /*<<< orphan*/  old_state; int /*<<< orphan*/  ssl; } ;
struct bufferevent {int /*<<< orphan*/  ev_read; } ;
typedef  enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;
struct TYPE_2__ {int /*<<< orphan*/  ev_read; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BEV_CTRL_CANCEL_ALL 131 
#define  BEV_CTRL_GET_FD 130 
#define  BEV_CTRL_GET_UNDERLYING 129 
#define  BEV_CTRL_SET_FD 128 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bufferevent_openssl*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 struct bufferevent_openssl* FUNC5 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC6(struct bufferevent *bev,
    enum bufferevent_ctrl_op op, union bufferevent_ctrl_data *data)
{
	struct bufferevent_openssl *bev_ssl = FUNC5(bev);
	switch (op) {
	case BEV_CTRL_SET_FD:
		if (!bev_ssl->underlying) {
			BIO *bio;
			bio = FUNC1(data->fd, 0);
			FUNC2(bev_ssl->ssl, bio, bio);
		} else {
			BIO *bio;
			if (!(bio = FUNC0(bev_ssl->underlying, 0)))
				return -1;
			FUNC2(bev_ssl->ssl, bio, bio);
		}

		return FUNC3(bev_ssl, bev_ssl->old_state, data->fd);
	case BEV_CTRL_GET_FD:
		if (bev_ssl->underlying) {
			data->fd = FUNC4(&bev_ssl->underlying->ev_read);
		} else {
			data->fd = FUNC4(&bev->ev_read);
		}
		return 0;
	case BEV_CTRL_GET_UNDERLYING:
		data->ptr = bev_ssl->underlying;
		return 0;
	case BEV_CTRL_CANCEL_ALL:
	default:
		return -1;
	}
}