
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONREAD ;
 scalar_t__ ioctl (int ,int ,int*) ;

int
test_poll(void *arg)
{
 int n;

 if (ioctl(0, FIONREAD, &n) >= 0)
  return (n > 0);
 return (0);
}
