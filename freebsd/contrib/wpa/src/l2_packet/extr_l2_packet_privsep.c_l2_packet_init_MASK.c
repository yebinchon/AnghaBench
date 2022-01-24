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
typedef  int /*<<< orphan*/  u8 ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; void* sun_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sun_path; void* sun_family; } ;
struct l2_packet_data {void (* rx_callback ) (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ;int fd; struct l2_packet_data* own_socket_path; int /*<<< orphan*/  own_addr; TYPE_1__ priv_addr; void* rx_callback_ctx; } ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  reg_cmd ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 void* AF_UNIX ; 
 scalar_t__ EINTR ; 
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  PRIVSEP_CMD_L2_REGISTER ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct l2_packet_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  l2_packet_receive ; 
 int /*<<< orphan*/  FUNC7 (struct l2_packet_data*) ; 
 struct l2_packet_data* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct l2_packet_data*,int,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct l2_packet_data*,int) ; 
 int FUNC13 (char*) ; 
 struct l2_packet_data* FUNC14 (int) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct l2_packet_data*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC21 (struct l2_packet_data*,int /*<<< orphan*/ ,int*,int) ; 

struct l2_packet_data * FUNC22(
	const char *ifname, const u8 *own_addr, unsigned short protocol,
	void (*rx_callback)(void *ctx, const u8 *src_addr,
			    const u8 *buf, size_t len),
	void *rx_callback_ctx, int l2_hdr)
{
	struct l2_packet_data *l2;
	char *own_dir = "/tmp";
	char *priv_dir = "/var/run/wpa_priv";
	size_t len;
	static unsigned int counter = 0;
	struct sockaddr_un addr;
	fd_set rfds;
	struct timeval tv;
	int res;
	u8 reply[ETH_ALEN + 1];
	int reg_cmd[2];

	l2 = FUNC14(sizeof(struct l2_packet_data));
	if (l2 == NULL)
		return NULL;
	l2->rx_callback = rx_callback;
	l2->rx_callback_ctx = rx_callback_ctx;

	len = FUNC13(own_dir) + 50;
	l2->own_socket_path = FUNC8(len);
	if (l2->own_socket_path == NULL) {
		FUNC7(l2);
		return NULL;
	}
	FUNC11(l2->own_socket_path, len, "%s/wpa_privsep-l2-%d-%d",
		    own_dir, FUNC6(), counter++);

	l2->priv_addr.sun_family = AF_UNIX;
	FUNC11(l2->priv_addr.sun_path, sizeof(l2->priv_addr.sun_path),
		    "%s/%s", priv_dir, ifname);

	l2->fd = FUNC17(PF_UNIX, SOCK_DGRAM, 0);
	if (l2->fd < 0) {
		FUNC20(MSG_ERROR, "socket(PF_UNIX): %s", FUNC18(errno));
		FUNC7(l2->own_socket_path);
		l2->own_socket_path = NULL;
		FUNC7(l2);
		return NULL;
	}

	FUNC10(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	FUNC12(addr.sun_path, l2->own_socket_path, sizeof(addr.sun_path));
	if (FUNC3(l2->fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC20(MSG_ERROR, "l2-pkt-privsep: bind(PF_UNIX): %s",
			   FUNC18(errno));
		goto fail;
	}

	reg_cmd[0] = protocol;
	reg_cmd[1] = l2_hdr;
	if (FUNC21(l2, PRIVSEP_CMD_L2_REGISTER, reg_cmd, sizeof(reg_cmd))
	    < 0) {
		FUNC20(MSG_ERROR, "L2: Failed to register with wpa_priv");
		goto fail;
	}

	FUNC2(&rfds);
	FUNC1(l2->fd, &rfds);
	tv.tv_sec = 5;
	tv.tv_usec = 0;
	res = FUNC16(l2->fd + 1, &rfds, NULL, NULL, &tv);
	if (res < 0 && errno != EINTR) {
		FUNC20(MSG_ERROR, "select: %s", FUNC18(errno));
		goto fail;
	}

	if (FUNC0(l2->fd, &rfds)) {
		res = FUNC15(l2->fd, reply, sizeof(reply), 0);
		if (res < 0) {
			FUNC20(MSG_ERROR, "recv: %s", FUNC18(errno));
			goto fail;
		}
	} else {
		FUNC20(MSG_DEBUG, "L2: Timeout while waiting for "
			   "registration reply");
		goto fail;
	}

	if (res != ETH_ALEN) {
		FUNC20(MSG_DEBUG, "L2: Unexpected registration reply "
			   "(len=%d)", res);
	}
	FUNC9(l2->own_addr, reply, ETH_ALEN);

	FUNC5(l2->fd, l2_packet_receive, l2, NULL);

	return l2;

fail:
	FUNC4(l2->fd);
	l2->fd = -1;
	FUNC19(l2->own_socket_path);
	FUNC7(l2->own_socket_path);
	l2->own_socket_path = NULL;
	FUNC7(l2);
	return NULL;
}