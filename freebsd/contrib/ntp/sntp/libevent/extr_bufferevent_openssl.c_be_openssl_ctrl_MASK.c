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
union bufferevent_ctrl_data {int fd; int /*<<< orphan*/  ptr; } ;
struct bufferevent_openssl {int fd_is_set; int /*<<< orphan*/  underlying; int /*<<< orphan*/  state; int /*<<< orphan*/  ssl; } ;
struct bufferevent {int /*<<< orphan*/  ev_read; } ;
typedef  enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BEV_CTRL_CANCEL_ALL 131 
#define  BEV_CTRL_GET_FD 130 
#define  BEV_CTRL_GET_UNDERLYING 129 
#define  BEV_CTRL_SET_FD 128 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bufferevent_openssl*,int) ; 
 int FUNC4 (struct bufferevent_openssl*,int) ; 
 struct bufferevent_openssl* FUNC5 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC6(struct bufferevent *bev,
    enum bufferevent_ctrl_op op, union bufferevent_ctrl_data *data)
{
	struct bufferevent_openssl *bev_ssl = FUNC5(bev);
	switch (op) {
	case BEV_CTRL_SET_FD:
		if (bev_ssl->underlying)
			return -1;
		{
			BIO *bio;
			bio = FUNC0(data->fd, 0);
			FUNC1(bev_ssl->ssl, bio, bio);
			bev_ssl->fd_is_set = 1;
		}
		if (data->fd == -1)
			bev_ssl->fd_is_set = 0;
		if (bev_ssl->state == BUFFEREVENT_SSL_OPEN)
			return FUNC4(bev_ssl, data->fd);
		else {
			return FUNC3(bev_ssl, data->fd);
		}
	case BEV_CTRL_GET_FD:
		if (bev_ssl->underlying)
			return -1;
		if (!bev_ssl->fd_is_set)
			return -1;
		data->fd = FUNC2(&bev->ev_read);
		return 0;
	case BEV_CTRL_GET_UNDERLYING:
		if (!bev_ssl->underlying)
			return -1;
		data->ptr = bev_ssl->underlying;
		return 0;
	case BEV_CTRL_CANCEL_ALL:
	default:
		return -1;
	}
}