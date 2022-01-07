
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EINTR ;
 int FALSE ;
 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int LOG_ERR ;
 int TRUE ;
 int activefds ;
 int fdbits (int,int *) ;
 int maxactivefd ;
 int msyslog (int ,char*,int,...) ;
 int read (int,int*,int ) ;

__attribute__((used)) static int
sanitize_fdset(
 int errc
 )
{
 int j, b, maxscan;





 if (errc != EINTR) {
  msyslog(LOG_ERR,
   "select(%d, %s, 0L, 0L, &0.0) error: %m",
   maxactivefd + 1,
   fdbits(maxactivefd, &activefds));
 }


 if (errc != EBADF)
  return FALSE;


 for (j = 0, maxscan = 0; j <= maxactivefd; j++) {
  if (FD_ISSET(j, &activefds)) {
   if (-1 != read(j, &b, 0)) {
    maxscan = j;
    continue;
   }

   msyslog(LOG_ERR,
    "Removing bad file descriptor %d from select set",
    j);

   FD_CLR(j, &activefds);
  }
 }
 if (maxactivefd != maxscan)
  maxactivefd = maxscan;
 return TRUE;
}
