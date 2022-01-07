
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct devreq {int dummy; } ;


 int O_RDONLY ;
 int ioctl (int,int ,struct devreq*) ;
 int open (char*,int ) ;

__attribute__((used)) static int
devctl_request(u_long cmd, struct devreq *req)
{
 static int devctl2_fd = -1;

 if (devctl2_fd == -1) {
  devctl2_fd = open("/dev/devctl2", O_RDONLY);
  if (devctl2_fd == -1)
   return (-1);
 }
 return (ioctl(devctl2_fd, cmd, req));
}
