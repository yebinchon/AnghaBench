
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; struct sockaddr* ai_addr; int ai_family; int ai_protocol; int ai_socktype; } ;
typedef scalar_t__ krb5_socket_t ;
typedef int krb5_context ;
typedef int addr ;


 int AF_UNIX ;
 int SOCK_DGRAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int errno ;
 char* kadm5_log_signal_socket (int ) ;
 int kadm5_log_signal_socket_info (int ,int,struct addrinfo**) ;
 int krb5_err (int ,int,int ,char*,...) ;
 int memset (struct sockaddr_un*,int ,int) ;
 scalar_t__ rk_IS_BAD_SOCKET (scalar_t__) ;
 scalar_t__ rk_IS_SOCKET_ERROR (scalar_t__) ;
 int rk_SOCK_ERRNO ;
 scalar_t__ socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;
 int unlink (int ) ;

__attribute__((used)) static krb5_socket_t
make_signal_socket (krb5_context context)
{

    struct sockaddr_un addr;
    const char *fn;
    krb5_socket_t fd;

    fn = kadm5_log_signal_socket(context);

    fd = socket (AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0)
 krb5_err (context, 1, errno, "socket AF_UNIX");
    memset (&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strlcpy (addr.sun_path, fn, sizeof(addr.sun_path));
    unlink (addr.sun_path);
    if (bind (fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
 krb5_err (context, 1, errno, "bind %s", addr.sun_path);
    return fd;
}
