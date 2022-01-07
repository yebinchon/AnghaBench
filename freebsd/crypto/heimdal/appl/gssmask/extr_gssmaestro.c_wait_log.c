
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct client {int salen; int moniker; TYPE_1__* sa; } ;
typedef int socklen_t ;
typedef int sast ;
typedef int int32_t ;
struct TYPE_2__ {int sa_family; } ;


 int SOCK_STREAM ;
 int SOMAXCONN ;
 int accept (int,struct sockaddr*,int*) ;
 int assert (int) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int eSetLoggingSocket ;
 int err (int,char*,int ) ;
 int getsockname (int,struct sockaddr*,int*) ;
 scalar_t__ listen (int,int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int ntohs (int ) ;
 int put32 (struct client*,int ) ;
 int socket (int ,int ,int ) ;
 int socket_get_port (struct sockaddr*) ;

__attribute__((used)) static int
wait_log(struct client *c)
{
    int32_t port;
    struct sockaddr_storage sast;
    socklen_t salen = sizeof(sast);
    int fd, fd2, ret;

    memset(&sast, 0, sizeof(sast));

    assert(sizeof(sast) >= c->salen);

    fd = socket(c->sa->sa_family, SOCK_STREAM, 0);
    if (fd < 0)
 err(1, "failed to build socket for %s's logging port", c->moniker);

    ((struct sockaddr *)&sast)->sa_family = c->sa->sa_family;
    ret = bind(fd, (struct sockaddr *)&sast, c->salen);
    if (ret < 0)
 err(1, "failed to bind %s's logging port", c->moniker);

    if (listen(fd, SOMAXCONN) < 0)
 err(1, "failed to listen %s's logging port", c->moniker);

    salen = sizeof(sast);
    ret = getsockname(fd, (struct sockaddr *)&sast, &salen);
    if (ret < 0)
 err(1, "failed to get address of local socket for %s", c->moniker);

    port = socket_get_port((struct sockaddr *)&sast);

    put32(c, eSetLoggingSocket);
    put32(c, ntohs(port));

    salen = sizeof(sast);
    fd2 = accept(fd, (struct sockaddr *)&sast, &salen);
    if (fd2 < 0)
 err(1, "failed to accept local socket for %s", c->moniker);
    close(fd);

    return fd2;
}
