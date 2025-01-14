
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr {int dummy; } ;
typedef int opt ;
struct TYPE_8__ {int sin_port; int sin_addr; } ;
struct TYPE_9__ {scalar_t__ l4_last; int l4_fd; int l4_rw; struct TYPE_9__* l4_next; scalar_t__ l4_wlen; TYPE_1__ l4_sin; } ;
typedef TYPE_2__ l4cfg_t ;
typedef int fd_set ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_GETFL ;
 int F_SETFL ;
 int MIN (scalar_t__,scalar_t__) ;
 int OPT_VERBOSE ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int close (int) ;
 int closel4 (TYPE_2__*,...) ;
 int connect (int,struct sockaddr*,int) ;
 int connectl4 (TYPE_2__*) ;
 scalar_t__ ctimeout ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ frequency ;
 char* inet_ntoa (int ) ;
 TYPE_2__* l4list ;
 int ntohs (int ) ;
 int opts ;
 int perror (char*) ;
 int readfd (TYPE_2__*) ;
 scalar_t__ rtimeout ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 scalar_t__ time (int *) ;
 int writefd (TYPE_2__*) ;

int runconfig()
{
 int fd, opt, res, mfd, i;
 struct timeval tv;
 time_t now, now1;
 fd_set rfd, wfd;
 l4cfg_t *l4;

 mfd = 0;
 opt = 1;
 now = time(((void*)0));




 for (l4 = l4list; l4; l4 = l4->l4_next) {
  if ((l4->l4_last + frequency < now) && (l4->l4_fd == -1)) {
   l4->l4_last = now;
   fd = socket(AF_INET, SOCK_STREAM, 0);
   if (fd == -1)
    continue;
   setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt,
       sizeof(opt));




   if (opts & OPT_VERBOSE)
    fprintf(stderr,
     "Connecting to %s,%d (fd %d)...",
     inet_ntoa(l4->l4_sin.sin_addr),
     ntohs(l4->l4_sin.sin_port), fd);
   if (connect(fd, (struct sockaddr *)&l4->l4_sin,
        sizeof(l4->l4_sin)) == -1) {
    if (errno != EINPROGRESS) {
     if (opts & OPT_VERBOSE)
      fprintf(stderr, "failed\n");
     perror("connect");
     close(fd);
     fd = -1;
    } else {
     if (opts & OPT_VERBOSE)
      fprintf(stderr, "waiting\n");
     l4->l4_rw = -2;
    }
   } else {
    if (opts & OPT_VERBOSE)
     fprintf(stderr, "connected\n");
    connectl4(l4);
   }
   l4->l4_fd = fd;
  }
 }




 FD_ZERO(&rfd);
 FD_ZERO(&wfd);
 tv.tv_sec = MIN(rtimeout, ctimeout);
 tv.tv_usec = 0;

 for (l4 = l4list; l4; l4 = l4->l4_next)
  if (l4->l4_rw == 0) {
   if (now - l4->l4_last > rtimeout) {
    if (opts & OPT_VERBOSE)
     fprintf(stderr, "%d: Read timeout\n",
      l4->l4_fd);
    closel4(l4, 1);
    continue;
   }
   if (opts & OPT_VERBOSE)
    fprintf(stderr, "Wait for read on fd %d\n",
     l4->l4_fd);
   FD_SET(l4->l4_fd, &rfd);
   if (l4->l4_fd > mfd)
    mfd = l4->l4_fd;
  } else if ((l4->l4_rw == 1 && l4->l4_wlen) ||
      l4->l4_rw == -2) {
   if ((l4->l4_rw == -2) &&
       (now - l4->l4_last > ctimeout)) {
    if (opts & OPT_VERBOSE)
     fprintf(stderr,
      "%d: connect timeout\n",
      l4->l4_fd);
    closel4(l4);
    continue;
   }
   if (opts & OPT_VERBOSE)
    fprintf(stderr, "Wait for write on fd %d\n",
     l4->l4_fd);
   FD_SET(l4->l4_fd, &wfd);
   if (l4->l4_fd > mfd)
    mfd = l4->l4_fd;
  }

 if (opts & OPT_VERBOSE)
  fprintf(stderr, "Select: max fd %d wait %d\n", mfd + 1,
   tv.tv_sec);
 i = select(mfd + 1, &rfd, &wfd, ((void*)0), &tv);
 if (i == -1) {
  perror("select");
  return -1;
 }

 now1 = time(((void*)0));

 for (l4 = l4list; (i > 0) && l4; l4 = l4->l4_next) {
  if (l4->l4_fd < 0)
   continue;
  if (FD_ISSET(l4->l4_fd, &rfd)) {
   if (opts & OPT_VERBOSE)
    fprintf(stderr, "Ready to read on fd %d\n",
     l4->l4_fd);
   readfd(l4);
   i--;
  }

  if ((l4->l4_fd >= 0) && FD_ISSET(l4->l4_fd, &wfd)) {
   if (opts & OPT_VERBOSE)
    fprintf(stderr, "Ready to write on fd %d\n",
     l4->l4_fd);
   writefd(l4);
   i--;
  }
 }
 return 0;
}
