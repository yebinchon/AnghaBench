
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ AUTH_KRB5 ;
 scalar_t__ EINTR ;
 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int RSHD_BUFSIZ ;
 int RSH_BUFSIZ ;
 scalar_t__ auth_method ;
 int close (int) ;
 int do_read (int,char*,int,int ) ;
 int do_write (int,char*,int,int ) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit (int ) ;
 int init_ivecs (int ,int) ;
 int * ivec_in ;
 int * ivec_out ;
 char* malloc (int) ;
 int max (int,int) ;
 int net_write (int,char*,int) ;
 int protocol_version ;
 int read (int,char*,int) ;
 int select (int,int *,int *,int *,int *) ;
 int strerror (scalar_t__) ;
 int syslog_and_die (char*,...) ;

__attribute__((used)) static void
rshd_loop (int from0, int to0,
    int to1, int from1,
    int to2, int from2,
    int have_errsock)
{
    fd_set real_readset;
    int max_fd;
    int count = 2;
    char *buf;

    if(from0 >= FD_SETSIZE || from1 >= FD_SETSIZE || from2 >= FD_SETSIZE)
 errx (1, "fd too large");






    FD_ZERO(&real_readset);
    FD_SET(from0, &real_readset);
    FD_SET(from1, &real_readset);
    FD_SET(from2, &real_readset);
    max_fd = max(from0, max(from1, from2)) + 1;

    buf = malloc(max(RSHD_BUFSIZ, RSH_BUFSIZ));
    if (buf == ((void*)0))
 syslog_and_die("out of memory");

    for (;;) {
 int ret;
 fd_set readset = real_readset;

 ret = select (max_fd, &readset, ((void*)0), ((void*)0), ((void*)0));
 if (ret < 0) {
     if (errno == EINTR)
  continue;
     else
  syslog_and_die ("select: %s", strerror(errno));
 }
 if (FD_ISSET(from0, &readset)) {
     ret = do_read (from0, buf, RSHD_BUFSIZ, ivec_in[0]);
     if (ret < 0)
  syslog_and_die ("read: %s", strerror(errno));
     else if (ret == 0) {
  close (from0);
  close (to0);
  FD_CLR(from0, &real_readset);
     } else
  net_write (to0, buf, ret);
 }
 if (FD_ISSET(from1, &readset)) {
     ret = read (from1, buf, RSH_BUFSIZ);
     if (ret < 0)
  syslog_and_die ("read: %s", strerror(errno));
     else if (ret == 0) {
  close (from1);
  close (to1);
  FD_CLR(from1, &real_readset);
  if (--count == 0)
      exit (0);
     } else
  do_write (to1, buf, ret, ivec_out[0]);
 }
 if (FD_ISSET(from2, &readset)) {
     ret = read (from2, buf, RSH_BUFSIZ);
     if (ret < 0)
  syslog_and_die ("read: %s", strerror(errno));
     else if (ret == 0) {
  close (from2);
  close (to2);
  FD_CLR(from2, &real_readset);
  if (--count == 0)
      exit (0);
     } else
  do_write (to2, buf, ret, ivec_out[1]);
 }
   }
}
