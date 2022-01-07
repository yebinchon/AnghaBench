
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usock ;
struct sockaddr_un {unsigned int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int AF_LOCAL ;
 scalar_t__ ENOENT ;
 int SOCK_STREAM ;
 int TCP_BACKLOG ;
 int VERB_ALGO ;
 int bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ errno ;
 int fd_set_nonblock (int) ;
 int listen (int,int ) ;
 int log_err (char*,...) ;
 int socket (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,char const*,int) ;
 int systemd_get_activated (int ,int ,int,int *,int ,char const*) ;
 scalar_t__ unlink (char const*) ;
 int verbose (int ,char*,char const*) ;

int
create_local_accept_sock(const char *path, int* noproto, int use_systemd)
{
 (void)use_systemd;
 (void)path;
 log_err("Local sockets are not supported");
 *noproto = 1;
 return -1;

}
