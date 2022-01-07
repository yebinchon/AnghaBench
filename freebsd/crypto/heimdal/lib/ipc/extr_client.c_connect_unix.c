
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct path_ctx {scalar_t__ fd; int path; } ;
typedef int addr ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int close (scalar_t__) ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int) ;
 int errno ;
 int rk_cloexec (scalar_t__) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
connect_unix(struct path_ctx *s)
{
    struct sockaddr_un addr;

    addr.sun_family = AF_UNIX;
    strlcpy(addr.sun_path, s->path, sizeof(addr.sun_path));

    s->fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (s->fd < 0)
 return errno;
    rk_cloexec(s->fd);

    if (connect(s->fd, (struct sockaddr *)&addr, sizeof(addr)) != 0) {
 close(s->fd);
 return errno;
    }

    return 0;
}
