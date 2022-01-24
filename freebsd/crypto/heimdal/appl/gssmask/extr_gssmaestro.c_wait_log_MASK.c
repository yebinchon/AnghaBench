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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct client {int salen; int /*<<< orphan*/  moniker; TYPE_1__* sa; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sast ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  eSetLoggingSocket ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct client*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr*) ; 

__attribute__((used)) static int
FUNC12(struct client *c)
{
    int32_t port;
    struct sockaddr_storage sast;
    socklen_t salen = sizeof(sast);
    int fd, fd2, ret;

    FUNC7(&sast, 0, sizeof(sast));

    FUNC1(sizeof(sast) >= c->salen);

    fd = FUNC10(c->sa->sa_family, SOCK_STREAM, 0);
    if (fd < 0)
	FUNC4(1, "failed to build socket for %s's logging port", c->moniker);

    ((struct sockaddr *)&sast)->sa_family = c->sa->sa_family;
    ret = FUNC2(fd, (struct sockaddr *)&sast, c->salen);
    if (ret < 0)
	FUNC4(1, "failed to bind %s's logging port", c->moniker);

    if (FUNC6(fd, SOMAXCONN) < 0)
	FUNC4(1, "failed to listen %s's logging port", c->moniker);

    salen = sizeof(sast);
    ret = FUNC5(fd, (struct sockaddr *)&sast, &salen);
    if (ret < 0)
	FUNC4(1, "failed to get address of local socket for %s", c->moniker);

    port = FUNC11((struct sockaddr *)&sast);

    FUNC9(c, eSetLoggingSocket);
    FUNC9(c, FUNC8(port));

    salen = sizeof(sast);
    fd2 = FUNC0(fd, (struct sockaddr *)&sast, &salen);
    if (fd2 < 0)
	FUNC4(1, "failed to accept local socket for %s", c->moniker);
    FUNC3(fd);

    return fd2;
}