
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int l_fp ;
typedef int fd_set ;


 int DPRINTF (int,char*) ;
 scalar_t__ EINTR ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int activefds ;
 int debug ;
 scalar_t__ errno ;
 int get_systime (int *) ;
 int handler_calls ;
 int input_handler_scan (int *,int *) ;
 scalar_t__ maxactivefd ;
 int msyslog (int ,char*,...) ;
 scalar_t__ sanitize_fdset (scalar_t__) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int wait_for_signal () ;

void
io_handler(void)
{

 fd_set rdfdes;
 int nfound;
 ++handler_calls;
 rdfdes = activefds;

 nfound = select(maxactivefd + 1, &rdfdes, ((void*)0),
   ((void*)0), ((void*)0));
 if (nfound < 0 && sanitize_fdset(errno)) {
  struct timeval t1;
  t1.tv_sec = 0;
  t1.tv_usec = 0;
  rdfdes = activefds;
  nfound = select(maxactivefd + 1,
    &rdfdes, ((void*)0), ((void*)0),
    &t1);
 }

 if (nfound > 0) {
  l_fp ts;

  get_systime(&ts);

  input_handler_scan(&ts, &rdfdes);
 } else if (nfound == -1 && errno != EINTR) {
  msyslog(LOG_ERR, "select() error: %m");
 }
}
