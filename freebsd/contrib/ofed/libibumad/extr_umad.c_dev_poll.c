
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;


 int EIO ;
 int ETIMEDOUT ;
 int POLLIN ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int dev_poll(int fd, int timeout_ms)
{
 struct pollfd ufds;
 int n;

 ufds.fd = fd;
 ufds.events = POLLIN;

 if ((n = poll(&ufds, 1, timeout_ms)) == 1)
  return 0;

 if (n == 0)
  return -ETIMEDOUT;

 return -EIO;
}
