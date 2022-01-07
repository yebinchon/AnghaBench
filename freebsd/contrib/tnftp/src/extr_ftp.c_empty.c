
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int revents; void* fd; } ;
typedef int FILE ;


 int POLLIN ;
 void* fileno (int *) ;
 int ftp_poll (struct pollfd*,int,int) ;

__attribute__((used)) static int
empty(FILE *ecin, FILE *din, int sec)
{
 int nr, nfd;
 struct pollfd pfd[2];

 nfd = 0;
 if (ecin) {
  pfd[nfd].fd = fileno(ecin);
  pfd[nfd++].events = POLLIN;
 }

 if (din) {
  pfd[nfd].fd = fileno(din);
  pfd[nfd++].events = POLLIN;
 }

 if ((nr = ftp_poll(pfd, nfd, sec * 1000)) <= 0)
  return nr;

 nr = 0;
 nfd = 0;
 if (ecin)
  nr |= (pfd[nfd++].revents & POLLIN) ? 1 : 0;
 if (din)
  nr |= (pfd[nfd++].revents & POLLIN) ? 2 : 0;
 return nr;
}
