
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct tac_handle {scalar_t__ fd; } ;
typedef int fd_set ;


 scalar_t__ EAGAIN ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 int generr (struct tac_handle*,char*,...) ;
 int gettimeofday (struct timeval*,int *) ;
 int read (scalar_t__,char*,size_t) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int strerror (scalar_t__) ;
 int timersub (struct timeval const*,struct timeval*,struct timeval*) ;

__attribute__((used)) static int
read_timed(struct tac_handle *h, void *buf, size_t len,
    const struct timeval *deadline)
{
 char *ptr;

 ptr = (char *)buf;
 while (len > 0) {
  int n;

  n = read(h->fd, ptr, len);
  if (n == -1) {
   struct timeval tv;
   int nfds;

   if (errno != EAGAIN) {
    generr(h, "Network read error: %s",
        strerror(errno));
    return -1;
   }


   gettimeofday(&tv, ((void*)0));
   timersub(deadline, &tv, &tv);
   if (tv.tv_sec >= 0) {
    fd_set rfds;

    FD_ZERO(&rfds);
    FD_SET(h->fd, &rfds);
    nfds =
        select(h->fd + 1, &rfds, ((void*)0), ((void*)0), &tv);
    if (nfds == -1) {
     generr(h, "select: %s",
         strerror(errno));
     return -1;
    }
   } else
    nfds = 0;
   if (nfds == 0) {
    generr(h, "Network read timed out");
    return -1;
   }
  } else if (n == 0) {
   generr(h, "unexpected EOF from server");
   return -1;
  } else {
   ptr += n;
   len -= n;
  }
 }
 return 0;
}
