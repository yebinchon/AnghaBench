
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int buf ;


 scalar_t__ AUTH_KRB5 ;
 scalar_t__ EINTR ;
 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int RSH_BUFSIZ ;
 int SHUT_WR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ auth_method ;
 int close (int) ;
 int do_read (int,char*,int,int ) ;
 int do_write (int,char*,int,int ) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int init_ivecs (int,int) ;
 scalar_t__ input ;
 int * ivec_in ;
 int * ivec_out ;
 scalar_t__ max (int,int) ;
 int net_write (int ,char*,int) ;
 int protocol_version ;
 int read (int,char*,int) ;
 int select (scalar_t__,int *,int *,int *,int *) ;
 int shutdown (int,int ) ;

__attribute__((used)) static int
rsh_loop (int s, int errsock)
{
    fd_set real_readset;
    int count = 1;






    if (s >= FD_SETSIZE || (errsock != -1 && errsock >= FD_SETSIZE))
 errx (1, "fd too large");

    FD_ZERO(&real_readset);
    FD_SET(s, &real_readset);
    if (errsock != -1) {
 FD_SET(errsock, &real_readset);
 ++count;
    }
    if(input)
 FD_SET(STDIN_FILENO, &real_readset);

    for (;;) {
 int ret;
 fd_set readset;
 char buf[RSH_BUFSIZ];

 readset = real_readset;
 ret = select (max(s, errsock) + 1, &readset, ((void*)0), ((void*)0), ((void*)0));
 if (ret < 0) {
     if (errno == EINTR)
  continue;
     else
  err (1, "select");
 }
 if (FD_ISSET(s, &readset)) {
     ret = do_read (s, buf, sizeof(buf), ivec_in[0]);
     if (ret < 0)
  err (1, "read");
     else if (ret == 0) {
  close (s);
  FD_CLR(s, &real_readset);
  if (--count == 0)
      return 0;
     } else
  net_write (STDOUT_FILENO, buf, ret);
 }
 if (errsock != -1 && FD_ISSET(errsock, &readset)) {
     ret = do_read (errsock, buf, sizeof(buf), ivec_in[1]);
     if (ret < 0)
  err (1, "read");
     else if (ret == 0) {
  close (errsock);
  FD_CLR(errsock, &real_readset);
  if (--count == 0)
      return 0;
     } else
  net_write (STDERR_FILENO, buf, ret);
 }
 if (FD_ISSET(STDIN_FILENO, &readset)) {
     ret = read (STDIN_FILENO, buf, sizeof(buf));
     if (ret < 0)
  err (1, "read");
     else if (ret == 0) {
  close (STDIN_FILENO);
  FD_CLR(STDIN_FILENO, &real_readset);
  shutdown (s, SHUT_WR);
     } else
  do_write (s, buf, ret, ivec_out[0]);
 }
    }
}
