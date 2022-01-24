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
typedef  int /*<<< orphan*/  uid_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {scalar_t__ buf; } ;
struct TYPE_5__ {int xp_fd; TYPE_1__ xp_rtaddr; } ;
typedef  TYPE_2__ SVCXPRT ;

/* Variables and functions */
 scalar_t__ AF_LOCAL ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC1(SVCXPRT *transp, uid_t *uid) {
	int sock, ret;
	gid_t egid;
	uid_t euid;
	struct sockaddr *sa;

	sock = transp->xp_fd;
	sa = (struct sockaddr *)transp->xp_rtaddr.buf;
	if (sa->sa_family == AF_LOCAL) {
		ret = FUNC0(sock, &euid, &egid);
		if (ret == 0)
			*uid = euid;
		return (ret);
	} else
		return (-1);
}