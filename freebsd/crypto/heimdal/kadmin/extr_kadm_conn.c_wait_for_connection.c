
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_socket_t ;
typedef int krb5_context ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_IGN ;
 int WNOHANG ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int getpid () ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int krb5_warnx (int ,char*) ;
 int max (int,scalar_t__) ;
 int pgrp ;
 scalar_t__ rk_IS_SOCKET_ERROR (int) ;
 scalar_t__ rk_SOCK_ERRNO ;
 int select (int,int *,int *,int *,int *) ;
 scalar_t__ setpgid (int ,int ) ;
 int sigchld ;
 int signal (int ,int ) ;
 scalar_t__ spawn_child (int ,scalar_t__*,unsigned int,unsigned int) ;
 scalar_t__ term_flag ;
 int terminate ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static void
wait_for_connection(krb5_context contextp,
      krb5_socket_t *socks, unsigned int num_socks)
{
    unsigned int i;
    int e;
    fd_set orig_read_set, read_set;
    int status, max_fd = -1;

    FD_ZERO(&orig_read_set);

    for(i = 0; i < num_socks; i++) {




 FD_SET(socks[i], &orig_read_set);
 max_fd = max(max_fd, socks[i]);
    }

    pgrp = getpid();

    if(setpgid(0, pgrp) < 0)
 err(1, "setpgid");

    signal(SIGTERM, terminate);
    signal(SIGINT, terminate);
    signal(SIGCHLD, sigchld);

    while (term_flag == 0) {
 read_set = orig_read_set;
 e = select(max_fd + 1, &read_set, ((void*)0), ((void*)0), ((void*)0));
 if(rk_IS_SOCKET_ERROR(e)) {
     if(rk_SOCK_ERRNO != EINTR)
  krb5_warn(contextp, rk_SOCK_ERRNO, "select");
 } else if(e == 0)
     krb5_warnx(contextp, "select returned 0");
 else {
     for(i = 0; i < num_socks; i++) {
  if(FD_ISSET(socks[i], &read_set))
      if(spawn_child(contextp, socks, num_socks, i) == 0)
   return;
     }
 }
    }
    signal(SIGCHLD, SIG_IGN);

    while ((waitpid(-1, &status, WNOHANG)) > 0)
 ;

    exit(0);
}
