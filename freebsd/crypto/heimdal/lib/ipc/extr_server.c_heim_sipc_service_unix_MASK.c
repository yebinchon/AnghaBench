#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  un ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct client {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  one ;
typedef  TYPE_1__* heim_sipc ;
typedef  int /*<<< orphan*/  heim_ipc_callback ;
struct TYPE_4__ {struct client* mech; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  HEIM_SIPC_TYPE_IPC ; 
 int /*<<< orphan*/  LOCAL_CREDS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  UNIX_SOCKET ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,TYPE_1__**) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(const char *service,
		       heim_ipc_callback callback,
		       void *user, heim_sipc *ctx)
{
    struct sockaddr_un un;
    int fd, ret;

    un.sun_family = AF_UNIX;

    FUNC6(un.sun_path, sizeof(un.sun_path),
	     "/var/run/.heim_%s-socket", service);
    fd = FUNC7(AF_UNIX, SOCK_STREAM, 0);
    if (fd < 0)
	return errno;

    FUNC8(fd, 1);
#ifdef LOCAL_CREDS
    {
	int one = 1;
	setsockopt(fd, 0, LOCAL_CREDS, (void *)&one, sizeof(one));
    }
#endif

    FUNC9(un.sun_path);

    if (FUNC0(fd, (struct sockaddr *)&un, sizeof(un)) < 0) {
	FUNC2(fd);
	return errno;
    }

    if (FUNC4(fd, SOMAXCONN) < 0) {
	FUNC2(fd);
	return errno;
    }

    FUNC1(un.sun_path, 0666);

    ret = FUNC3(fd, HEIM_SIPC_TYPE_IPC,
				    callback, user, ctx);
    if (ret == 0) {
	struct client *c = (*ctx)->mech;
	c->flags |= UNIX_SOCKET;
    }

    return ret;
}