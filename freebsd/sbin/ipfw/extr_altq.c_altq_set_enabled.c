
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCSTARTALTQ ;
 int DIOCSTOPALTQ ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int EX_UNAVAILABLE ;
 int O_RDWR ;
 int close (int) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ) ;
 int open (char*,int ) ;

void
altq_set_enabled(int enabled)
{
 int pffd;

 pffd = open("/dev/pf", O_RDWR);
 if (pffd == -1)
  err(EX_UNAVAILABLE,
      "altq support opening pf(4) control device");
 if (enabled) {
  if (ioctl(pffd, DIOCSTARTALTQ) != 0 && errno != EEXIST)
   err(EX_UNAVAILABLE, "enabling altq");
 } else {
  if (ioctl(pffd, DIOCSTOPALTQ) != 0 && errno != ENOENT)
   err(EX_UNAVAILABLE, "disabling altq");
 }
 close(pffd);
}
