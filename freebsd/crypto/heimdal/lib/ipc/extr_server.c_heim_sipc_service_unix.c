
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int un ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct client {int flags; } ;
typedef int one ;
typedef TYPE_1__* heim_sipc ;
typedef int heim_ipc_callback ;
struct TYPE_4__ {struct client* mech; } ;


 int AF_UNIX ;
 int HEIM_SIPC_TYPE_IPC ;
 int LOCAL_CREDS ;
 int SOCK_STREAM ;
 int SOMAXCONN ;
 int UNIX_SOCKET ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int chmod (int ,int) ;
 int close (int) ;
 int errno ;
 int heim_sipc_stream_listener (int,int ,int ,void*,TYPE_1__**) ;
 scalar_t__ listen (int,int ) ;
 int setsockopt (int,int ,int ,void*,int) ;
 int snprintf (int ,int,char*,char const*) ;
 int socket (int ,int ,int ) ;
 int socket_set_reuseaddr (int,int) ;
 int unlink (int ) ;

int
heim_sipc_service_unix(const char *service,
         heim_ipc_callback callback,
         void *user, heim_sipc *ctx)
{
    struct sockaddr_un un;
    int fd, ret;

    un.sun_family = AF_UNIX;

    snprintf(un.sun_path, sizeof(un.sun_path),
      "/var/run/.heim_%s-socket", service);
    fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd < 0)
 return errno;

    socket_set_reuseaddr(fd, 1);







    unlink(un.sun_path);

    if (bind(fd, (struct sockaddr *)&un, sizeof(un)) < 0) {
 close(fd);
 return errno;
    }

    if (listen(fd, SOMAXCONN) < 0) {
 close(fd);
 return errno;
    }

    chmod(un.sun_path, 0666);

    ret = heim_sipc_stream_listener(fd, HEIM_SIPC_TYPE_IPC,
        callback, user, ctx);
    if (ret == 0) {
 struct client *c = (*ctx)->mech;
 c->flags |= UNIX_SOCKET;
    }

    return ret;
}
