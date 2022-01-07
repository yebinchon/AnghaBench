
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syncmsg ;
struct pollfd {int fd; int events; } ;


 int ERRX (int ,char*,int ) ;
 int EXIT_FAILURE ;
 int POLLIN ;
 int errno ;
 int poll (struct pollfd*,int,int) ;
 int read (int const,int*,int) ;
 int strerror (int ) ;
 int write (int const,int*,int) ;

__attribute__((used)) static int
synchronize(const int fd, bool waiter)
{
 int syncmsg = 0;
 int r;
 struct pollfd pfd;

 if (waiter) {
  pfd.fd = fd;
  pfd.events = POLLIN;


  r = poll(&pfd, 1, 10000);
  if (r == -1)
   ERRX(EXIT_FAILURE, "poll (%s)", strerror(errno));
  if (r == 0)

   return -1;

  if (read(fd, &syncmsg, sizeof(syncmsg)) == -1)
   ERRX(EXIT_FAILURE, "read (%s)", strerror(errno));
 } else {
  if (write(fd, &syncmsg, sizeof(syncmsg)) == -1)
   ERRX(EXIT_FAILURE, "write (%s)", strerror(errno));
 }

 return 0;
}
