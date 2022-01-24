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
struct socket_info {struct socket_info* tmp_path; struct socket_info* peername; struct socket_info* myname; struct socket_info* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWRAP_CLOSE_ACK ; 
 int /*<<< orphan*/  SWRAP_CLOSE_RECV ; 
 int /*<<< orphan*/  SWRAP_CLOSE_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct socket_info*) ; 
 struct socket_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_info*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  sockets ; 
 int /*<<< orphan*/  FUNC4 (struct socket_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_info*) ; 

int FUNC6(int fd)
{
	struct socket_info *si = FUNC1(fd);
	int ret;

	if (!si) {
		return FUNC3(fd);
	}

	FUNC0(sockets, si);

	if (si->myname && si->peername) {
		FUNC4(si, NULL, SWRAP_CLOSE_SEND, NULL, 0);
	}

	ret = FUNC3(fd);

	if (si->myname && si->peername) {
		FUNC4(si, NULL, SWRAP_CLOSE_RECV, NULL, 0);
		FUNC4(si, NULL, SWRAP_CLOSE_ACK, NULL, 0);
	}

	if (si->path) FUNC2(si->path);
	if (si->myname) FUNC2(si->myname);
	if (si->peername) FUNC2(si->peername);
	if (si->tmp_path) {
		FUNC5(si->tmp_path);
		FUNC2(si->tmp_path);
	}
	FUNC2(si);

	return ret;
}