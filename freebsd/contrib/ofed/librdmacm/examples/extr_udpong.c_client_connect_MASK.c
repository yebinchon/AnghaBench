#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int CTRL_MSG_SIZE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  dst_addr ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 TYPE_1__ g_msg ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  msg_op_login ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int rs ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct addrinfo hints, *res;
	int ret;

	FUNC4(&hints, 0, sizeof hints);
	hints.ai_socktype = SOCK_DGRAM;
 	ret = FUNC3(dst_addr, port, &hints, &res);
	if (ret) {
		FUNC6("getaddrinfo: %s\n", FUNC2(ret));
		return ret;
	}

	rs = FUNC9(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (rs < 0) {
		FUNC5("rsocket");
		ret = rs;
		goto out;
	}

	FUNC10(rs);
	ret = FUNC8(rs, res->ai_addr, res->ai_addrlen);
	if (ret) {
		FUNC5("rconnect");
		FUNC7(rs);
		goto out;
	}

	g_msg.op = msg_op_login;
	ret = FUNC0(&g_msg, CTRL_MSG_SIZE, 1000);
	if (ret == CTRL_MSG_SIZE)
		ret = 0;

out:
	FUNC1(res);
	return ret;
}